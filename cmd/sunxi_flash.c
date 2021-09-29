/*
 * (C) Copyright 2013-2016
 * Allwinner Technology Co., Ltd. <www.allwinnertech.com>
 *
 * wangwei <wangwei@allwinnertech.com>
 * SPDX-License-Identifier:     GPL-2.0+
 */

#include <common.h>
#include <config.h>
#include <command.h>
#include <sunxi_board.h>
#include <malloc.h>
#include <memalign.h>
#include <sunxi_flash.h>
#include <part.h>
#include <image.h>
#include <android_image.h>
#include <sys_partition.h>
#include <sprite_download.h>
#include "../sprite/sparse/sparse.h"

DECLARE_GLOBAL_DATA_PTR;

#define SUNXI_FLASH_READ_FIRST_SIZE (32 * 1024)

static int sunxi_flash_read_part(struct blk_desc *desc, disk_partition_t *info,
				 ulong buffer, ulong load_size)
{
	int ret;
	u32 rbytes, rblock, testblock;
	u32 start_block;
	u8 *addr;
	struct andr_img_hdr *fb_hdr;
	image_header_t *uz_hdr;

	addr	= (void *)buffer;
	start_block = (uint)info->start;

	testblock = SUNXI_FLASH_READ_FIRST_SIZE / 512;
	ret       = blk_dread(desc, start_block, testblock, (u_char *)buffer);
	if (ret != testblock) {
		return 1;
	}

	fb_hdr = (struct andr_img_hdr *)addr;
	uz_hdr = (image_header_t *)addr;
	if (load_size)
		rbytes = load_size;
	else if (!memcmp(fb_hdr->magic, ANDR_BOOT_MAGIC, 8)) {
		rbytes = android_image_get_end(fb_hdr) - (ulong)fb_hdr;

		/*secure boot img may attached with an embbed cert*/
		rbytes += sunxi_boot_image_get_embbed_cert_len(fb_hdr);
	} else if (image_check_magic(uz_hdr))
		rbytes = image_get_data_size(uz_hdr) + image_get_header_size();
	else {
		debug("bad boot image magic, maybe not a boot.img?\n");
		rbytes = info->size * 512;
	}

	rblock = (rbytes + 511) / 512 - testblock;
	start_block += testblock;
	addr += SUNXI_FLASH_READ_FIRST_SIZE;

	ret = blk_dread(desc, start_block, rblock, (u_char *)addr);
	ret = (ret == rblock) ? 0 : 1;

	debug("sunxi flash read :offset %x, %d bytes %s\n", (u32)info->start,
	      rbytes, ret == 0 ? "OK" : "ERROR");

	return ret;
}

int do_sunxi_flash(cmd_tbl_t *cmdtp, int flag, int argc, char *const argv[])
{
	struct blk_desc *desc;
	disk_partition_t info = { 0 };
	ulong load_addr;
	ulong load_size = 0;
	char *cmd;
	char *part_name;
	int ret;
	static int partdata_format;

	/* at least four arguments please */
	if (argc < 4)
		goto usage;
	else if (argc < 5)
		partdata_format = 0;

	cmd       = argv[1];
	part_name = argv[3];

	if (strncmp(cmd, "read", strlen("read")) == 0) {
		load_addr = (ulong)simple_strtoul(argv[2], NULL, 16);
		if (argc == 5)
			load_size = (ulong)simple_strtoul(argv[4], NULL, 16);
		env_set("boot_from_partion", part_name);
	} else if (!strncmp(cmd, "write", strlen("write"))) {
		load_addr = (ulong)simple_strtoul(argv[2], NULL, 16);

		if (!strncmp(part_name, "boot_package", strlen("boot_package")) ||
			!strncmp(part_name, "uboot", strlen("uboot")) ||
			!strncmp(part_name, "toc1", strlen("toc1"))) {
			return sunxi_sprite_download_uboot((void *)load_addr, get_boot_storage_type(), 0);
		} else if (!strncmp(part_name, "boot0", strlen("boot0")) ||
			!strncmp(part_name, "toc0", strlen("toc0"))) {
			return sunxi_sprite_download_boot0((void *)load_addr, get_boot_storage_type());
		}
		/* write size: indecated on partemeter 1 */
		if (sunxi_partition_get_info_byname(part_name, (uint *)&info.start, (uint *)&info.size))
			goto usage;
		if (argc == 5) {
			/* write size: partemeter 2 */
			info.size = ALIGN((u32)simple_strtoul(argv[4], NULL, 16), 512)/512;
		} else if (argc == 6) {
			info.start += ALIGN((u32)simple_strtoul(argv[4], NULL, 16), 512)/512;
			info.size = ALIGN((u32)simple_strtoul(argv[5], NULL, 16), 512)/512;
			if (simple_strtoul(argv[4], NULL, 16) == 0) {
				partdata_format = unsparse_probe((char *)load_addr, info.size*512, (u32)info.start);
				pr_msg("partdata_format:%d\n", partdata_format);
			}
		}

		if (partdata_format != ANDROID_FORMAT_DETECT) {
			ret = sunxi_flash_write(info.start, info.size, (void *)load_addr);
		} else {
			ret = unsparse_direct_write((void *)load_addr, (u32)simple_strtoul(argv[5], NULL, 16)) ? 0 : 1;
		}

		sunxi_flash_flush();
		pr_msg("sunxi flash write :offset %lx, %d bytes %s\n", info.start, info.size*512,
				ret ? "OK" : "ERROR");

		return ret;

	} else {
		goto usage;
	}

	desc = blk_get_devnum_by_typename("sunxi_flash", 0);
	if (desc == NULL)
		return -ENODEV;

	ret = sunxi_flash_try_partition(desc, part_name, &info);
	if (ret < 0)
		return -ENODEV;
	pr_msg("partinfo: name %s, start 0x%lx, size 0x%lx\n", info.name,
	       info.start, info.size);
	return sunxi_flash_read_part(desc, &info, load_addr, load_size);

usage:
	return cmd_usage(cmdtp);
}

U_BOOT_CMD(sunxi_flash, 6, 1, do_sunxi_flash, "sunxi_flash sub-system",
	   "sunxi_flash read mem_addr part_name [size]\n"
	   "sunxi_flash write <mem_addr> <part_name> [size]\n"
	   "sunxi_flash write <mem_addr> <part_name> [offset] [size]\n");
