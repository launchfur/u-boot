cmd_common/board_r.o := ./../tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-gcc -Wp,-MD,common/.board_r.o.d  -nostdinc -isystem /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabi/7.2.1/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -I./include/openssl -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Werror -Wno-packed-bitfield-compat -fshort-wchar -Os -fno-stack-protector -fno-delete-null-pointer-checks -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -I./arch/arm/mach-sunxi/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(board_r)"  -D"KBUILD_MODNAME=KBUILD_STR(board_r)" -c -o common/board_r.o common/board_r.c

source_common/board_r.o := common/board_r.c

deps_common/board_r.o := \
    $(wildcard include/config/cmd/bedbug.h) \
    $(wildcard include/config/cmd/kgdb.h) \
    $(wildcard include/config/bitbangmii.h) \
    $(wildcard include/config/addr/map.h) \
    $(wildcard include/config/arch/sunxi.h) \
    $(wildcard include/config/sound/sunxi/boot/tone.h) \
    $(wildcard include/config/cmd/pwm/led.h) \
    $(wildcard include/config/trace.h) \
    $(wildcard include/config/trace/buffer/size.h) \
    $(wildcard include/config/sunxi/ledc.h) \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/nds32.h) \
    $(wildcard include/config/riscv.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/nios2.h) \
    $(wildcard include/config/mpc85xx.h) \
    $(wildcard include/config/mpc86xx.h) \
    $(wildcard include/config/sys/monitor/base.h) \
    $(wildcard include/config/sys/extra/env/reloc.h) \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/mips.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/post.h) \
    $(wildcard include/config/sys/init/ram/lock.h) \
    $(wildcard include/config/e500.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/dm/pci.h) \
    $(wildcard include/config/sys/malloc/f/len.h) \
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/sys/noncached/memory.h) \
    $(wildcard include/config/of/live.h) \
    $(wildcard include/config/dm.h) \
    $(wildcard include/config/timer.h) \
    $(wildcard include/config/timer/early.h) \
    $(wildcard include/config/needs/manual/reloc.h) \
    $(wildcard include/config/mtd/nor/flash.h) \
    $(wildcard include/config/sys/flash/checksum.h) \
    $(wildcard include/config/sys/flash/base.h) \
    $(wildcard include/config/sys/update/flash/size.h) \
    $(wildcard include/config/oxc.h) \
    $(wildcard include/config/rmu.h) \
    $(wildcard include/config/sys/text/base.h) \
    $(wildcard include/config/dm/spi.h) \
    $(wildcard include/config/mpc8xx/spi.h) \
    $(wildcard include/config/env/is/in/eeprom.h) \
    $(wildcard include/config/cmd/nand.h) \
    $(wildcard include/config/cmd/onenand.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/boot/gui.h) \
    $(wildcard include/config/sunxi/box/standby.h) \
    $(wildcard include/config/atf/box/standby.h) \
    $(wildcard include/config/ir/boot/recovery.h) \
    $(wildcard include/config/sunxi/homlet.h) \
    $(wildcard include/config/recovery/key.h) \
    $(wildcard include/config/sunxi/flash.h) \
    $(wildcard include/config/sunxi/ubifs.h) \
    $(wildcard include/config/cmd/sunxi/auto/fel.h) \
    $(wildcard include/config/sunxi/burn.h) \
    $(wildcard include/config/of/control.h) \
    $(wildcard include/config/delay/environment.h) \
    $(wildcard include/config/sys/bootparams/len.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/has/eth1.h) \
    $(wildcard include/config/has/eth2.h) \
    $(wildcard include/config/has/eth3.h) \
    $(wildcard include/config/has/eth4.h) \
    $(wildcard include/config/has/eth5.h) \
    $(wildcard include/config/led/status.h) \
    $(wildcard include/config/led/status/boot.h) \
    $(wildcard include/config/led/status/blinking.h) \
    $(wildcard include/config/scsi.h) \
    $(wildcard include/config/dm/scsi.h) \
    $(wildcard include/config/reset/phy/r.h) \
    $(wildcard include/config/cmd/pcmcia.h) \
    $(wildcard include/config/ide.h) \
    $(wildcard include/config/start/ide.h) \
    $(wildcard include/config/pram.h) \
    $(wildcard include/config/mach/sun50iw10.h) \
    $(wildcard include/config/sunxi/lradc/key.h) \
    $(wildcard include/config/sunxi/usb/detect.h) \
    $(wildcard include/config/clocks.h) \
    $(wildcard include/config/board/early/init/r.h) \
    $(wildcard include/config/sys/early/pci/init.h) \
    $(wildcard include/config/arch/early/init/r.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/id/eeprom.h) \
    $(wildcard include/config/sys/i2c/mac/offset.h) \
    $(wildcard include/config/display/boardinfo/late.h) \
    $(wildcard include/config/arch/misc/init.h) \
    $(wildcard include/config/misc/init/r.h) \
    $(wildcard include/config/microblaze.h) \
    $(wildcard include/config/board/late/init.h) \
    $(wildcard include/config/last/stage/init.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/arm64.h) \
  include/common.h \
    $(wildcard include/config/sys/support/64bit/data.h) \
    $(wildcard include/config/env/is/embedded.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/env/addr.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/env/is/in/nvram.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/cmd/eeprom.h) \
    $(wildcard include/config/env/eeprom/is/on/i2c.h) \
    $(wildcard include/config/sys/i2c/eeprom/addr.h) \
    $(wildcard include/config/sys/def/eeprom/addr.h) \
    $(wildcard include/config/sys/dram/test.h) \
    $(wildcard include/config/show/activity.h) \
    $(wildcard include/config/mp.h) \
    $(wildcard include/config/has/post.h) \
    $(wildcard include/config/post/alt/list.h) \
    $(wildcard include/config/post/std/list.h) \
    $(wildcard include/config/init/critical.h) \
    $(wildcard include/config/skip/lowlevel/init.h) \
    $(wildcard include/config/efi/stub.h) \
  include/config.h \
    $(wildcard include/config/boarddir.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/dm/serial.h) \
    $(wildcard include/config/dm/gpio.h) \
    $(wildcard include/config/dm/i2c.h) \
    $(wildcard include/config/dm/warn.h) \
    $(wildcard include/config/dm/stdio.h) \
  include/configs/sun50iw10p1.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/usb/ehci/hcd.h) \
    $(wildcard include/config/usb/ehci/sunxi.h) \
    $(wildcard include/config/usb/max/controller/count.h) \
    $(wildcard include/config/sunxi/usb/phys.h) \
    $(wildcard include/config/sys/bootm/len.h) \
  include/configs/sunxi-common.h \
    $(wildcard include/config/sunxi/debug.h) \
    $(wildcard include/config/old/sunxi/kernel/compat.h) \
    $(wildcard include/config/mach/type/compat/rev.h) \
    $(wildcard include/config/build/target.h) \
    $(wildcard include/config/sys/ns16550/serial.h) \
    $(wildcard include/config/sys/ns16550/clk.h) \
    $(wildcard include/config/sys/ns16550/reg/size.h) \
    $(wildcard include/config/sys/ns16550/com1.h) \
    $(wildcard include/config/sys/ns16550/com2.h) \
    $(wildcard include/config/sys/ns16550/com3.h) \
    $(wildcard include/config/sys/ns16550/com4.h) \
    $(wildcard include/config/sys/ns16550/com5.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/mach/sun9i.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/spl/stack/r/addr.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/dram/para/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/sys/init/ram/addr.h) \
    $(wildcard include/config/sys/init/ram/size.h) \
    $(wildcard include/config/sunxi/logbuffer.h) \
    $(wildcard include/config/sys/init/sp/offset.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/ahci.h) \
    $(wildcard include/config/scsi/ahci/plat.h) \
    $(wildcard include/config/sunxi/ahci.h) \
    $(wildcard include/config/sys/64bit/lba.h) \
    $(wildcard include/config/sys/scsi/max/scsi/id.h) \
    $(wildcard include/config/sys/scsi/max/lun.h) \
    $(wildcard include/config/sys/scsi/max/device.h) \
    $(wildcard include/config/setup/memory/tags.h) \
    $(wildcard include/config/cmdline/tag.h) \
    $(wildcard include/config/initrd/tag.h) \
    $(wildcard include/config/serial/tag.h) \
    $(wildcard include/config/nand/sunxi.h) \
    $(wildcard include/config/sys/nand/max/eccpos.h) \
    $(wildcard include/config/sys/nand/onfi/detection.h) \
    $(wildcard include/config/sys/max/nand/device.h) \
    $(wildcard include/config/mtd/device.h) \
    $(wildcard include/config/mtd/partitions.h) \
    $(wildcard include/config/spl/spi/sunxi.h) \
    $(wildcard include/config/sys/spi/u/boot/offs.h) \
    $(wildcard include/config/mmc/sunxi/slot.h) \
    $(wildcard include/config/mach/sun8iw18.h) \
    $(wildcard include/config/mach/sun8iw19.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/standalone/load/addr.h) \
    $(wildcard include/config/spl/board/load/image.h) \
    $(wildcard include/config/sunxi/high/sram.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/i2c0/enable.h) \
    $(wildcard include/config/i2c1/enable.h) \
    $(wildcard include/config/i2c2/enable.h) \
    $(wildcard include/config/i2c3/enable.h) \
    $(wildcard include/config/i2c4/enable.h) \
    $(wildcard include/config/i2c5/enable.h) \
    $(wildcard include/config/r/i2c0/enable.h) \
    $(wildcard include/config/r/i2c1/enable.h) \
    $(wildcard include/config/sys/i2c/mvtwsi.h) \
    $(wildcard include/config/sys/i2c/sunxi.h) \
    $(wildcard include/config/sys/i2c.h) \
    $(wildcard include/config/sys/i2c/speed.h) \
    $(wildcard include/config/sys/i2c/slave.h) \
    $(wildcard include/config/sunxi/gpio.h) \
    $(wildcard include/config/video/sunxi.h) \
    $(wildcard include/config/sunxi/max/fb/size.h) \
    $(wildcard include/config/video/logo.h) \
    $(wildcard include/config/video/std/timings.h) \
    $(wildcard include/config/i2c/edid.h) \
    $(wildcard include/config/sun4i/emac.h) \
    $(wildcard include/config/mii.h) \
    $(wildcard include/config/sun7i/gmac.h) \
    $(wildcard include/config/phy/realtek.h) \
    $(wildcard include/config/usb/ohci/new.h) \
    $(wildcard include/config/usb/ohci/sunxi.h) \
    $(wildcard include/config/sys/usb/ohci/max/root/ports.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/default/device/tree.h) \
    $(wildcard include/config/extra/env/settings.h) \
  arch/arm/include/asm/arch/cpu.h \
    $(wildcard include/config/sunxi/ncat.h) \
    $(wildcard include/config/sunxi/ncat/v2.h) \
    $(wildcard include/config/sunxi/version1.h) \
  arch/arm/include/asm/arch/cpu_ncat.h \
    $(wildcard include/config/mach/sun50iw11.h) \
    $(wildcard include/config/mach/sun50iw12.h) \
    $(wildcard include/config/mach/sun50iw6.h) \
    $(wildcard include/config/mach/sun50iw9.h) \
  include/linux/stringify.h \
  include/config_distro_bootcmd.h \
    $(wildcard include/config/cmd/distro/bootcmd/h.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/x86/run/32bit.h) \
    $(wildcard include/config/x86/run/64bit.h) \
    $(wildcard include/config/arch/rv32i.h) \
    $(wildcard include/config/arch/rv64i.h) \
    $(wildcard include/config/sata.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp/or/pxe.h) \
    $(wildcard include/config/bootcommand.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/cpu/pxa27x.h) \
    $(wildcard include/config/cpu/monahans.h) \
    $(wildcard include/config/cpu/pxa25x.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/sys/prompt.h) \
    $(wildcard include/config/sys/maxargs.h) \
  include/errno.h \
    $(wildcard include/config/errno/str.h) \
  include/linux/errno.h \
  include/time.h \
  include/linux/typecheck.h \
  include/asm-offsets.h \
  include/generated/generic-asm-offsets.h \
  include/linux/bitops.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/bitsperlong.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/use/stdint.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  arch/arm/include/asm/posix_types.h \
  /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/lib/gcc/arm-linux-gnueabi/7.2.1/include/stdbool.h \
  arch/arm/include/asm/bitops.h \
  arch/arm/include/asm/proc-armv/system.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
  include/asm-generic/bitops/__fls.h \
  include/asm-generic/bitops/__ffs.h \
  include/asm-generic/bitops/fls.h \
  include/asm-generic/bitops/fls64.h \
  include/linux/bug.h \
  include/vsprintf.h \
    $(wildcard include/config/panic/hang.h) \
  /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/lib/gcc/arm-linux-gnueabi/7.2.1/include/stdarg.h \
  include/linux/build_bug.h \
  include/linux/printk.h \
  include/stdio.h \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/tpl/serial/support.h) \
    $(wildcard include/config/spl/serial/support.h) \
  include/linux/delay.h \
  include/linux/kernel.h \
  include/linux/string.h \
  arch/arm/include/asm/string.h \
    $(wildcard include/config/use/arch/memcpy.h) \
    $(wildcard include/config/use/arch/memset.h) \
  include/linux/linux_string.h \
  arch/arm/include/asm/ptrace.h \
  arch/arm/include/asm/proc-armv/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  include/part.h \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/partition/type/guid.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/partitions.h) \
    $(wildcard include/config/spl/ext/support.h) \
    $(wildcard include/config/spl/fat/support.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/partition.h) \
    $(wildcard include/config/efi/partition.h) \
  include/blk.h \
    $(wildcard include/config/blk.h) \
    $(wildcard include/config/lba48.h) \
    $(wildcard include/config/block/cache.h) \
  include/efi.h \
    $(wildcard include/config/efi/stub/64bit.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  include/ide.h \
    $(wildcard include/config/sys/ide/maxdevice.h) \
    $(wildcard include/config/sys/ide/maxbus.h) \
    $(wildcard include/config/sys/ata/base/addr.h) \
    $(wildcard include/config/ide/preinit.h) \
    $(wildcard include/config/of/ide/fixup.h) \
    $(wildcard include/config/ide/ahb.h) \
  include/uuid.h \
  include/linux/list.h \
  include/linux/poison.h \
  include/part_efi.h \
    $(wildcard include/config/efi/partition/entries/numbers.h) \
  include/flash.h \
    $(wildcard include/config/sys/max/flash/sect.h) \
    $(wildcard include/config/sys/flash/cfi.h) \
    $(wildcard include/config/mtd.h) \
    $(wildcard include/config/cfi/flash.h) \
    $(wildcard include/config/flash/cfi/mtd.h) \
    $(wildcard include/config/sys/flash/protection.h) \
    $(wildcard include/config/flash/cfi/legacy.h) \
  include/image.h \
    $(wildcard include/config/fit/verbose.h) \
    $(wildcard include/config/fit/enable/sha256/support.h) \
    $(wildcard include/config/sha1.h) \
    $(wildcard include/config/sha256.h) \
    $(wildcard include/config/fit.h) \
    $(wildcard include/config/of/libfdt.h) \
    $(wildcard include/config/spl/crc32/support.h) \
    $(wildcard include/config/spl/md5/support.h) \
    $(wildcard include/config/spl/sha1/support.h) \
    $(wildcard include/config/crc32.h) \
    $(wildcard include/config/spl/sha256/support.h) \
    $(wildcard include/config/sys/boot/get/cmdline.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/timestamp.h) \
    $(wildcard include/config/cmd/date.h) \
    $(wildcard include/config/image/format/legacy.h) \
    $(wildcard include/config/sys/boot/get/kbd.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/fit/best/match.h) \
    $(wildcard include/config/android/boot/image.h) \
    $(wildcard include/config/spl/fit/image/post/process.h) \
    $(wildcard include/config/fit/image/post/process.h) \
  include/compiler.h \
  /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/lib/gcc/arm-linux-gnueabi/7.2.1/include/stddef.h \
  arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/lmb.h \
  arch/arm/include/asm/u-boot.h \
  include/asm-generic/u-boot.h \
    $(wildcard include/config/mpc8xx.h) \
    $(wildcard include/config/mpc83xx.h) \
    $(wildcard include/config/cpm2.h) \
    $(wildcard include/config/extra/clock.h) \
  arch/arm/include/asm/u-boot-arm.h \
  include/command.h \
    $(wildcard include/config/sys/help/cmd/width.h) \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/i2c.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/pci.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/bootm.h) \
    $(wildcard include/config/cmdline.h) \
  include/linker_lists.h \
  include/log.h \
    $(wildcard include/config/log.h) \
    $(wildcard include/config/log/max/level.h) \
    $(wildcard include/config/log/error/return.h) \
  include/dm/uclass-id.h \
  arch/arm/include/asm/global_data.h \
    $(wildcard include/config/fsl/esdhc.h) \
    $(wildcard include/config/u/qe.h) \
    $(wildcard include/config/at91family.h) \
    $(wildcard include/config/sys/icache/off.h) \
    $(wildcard include/config/sys/dcache/off.h) \
    $(wildcard include/config/sys/mem/reserve/secure.h) \
    $(wildcard include/config/resv/ram.h) \
    $(wildcard include/config/arch/omap2plus.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/sys/fsl/has/dp/ddr.h) \
  include/asm-generic/global_data.h \
    $(wildcard include/config/lcd.h) \
    $(wildcard include/config/video.h) \
    $(wildcard include/config/board/types.h) \
    $(wildcard include/config/pre/console/buffer.h) \
    $(wildcard include/config/sys/i2c/mxc.h) \
    $(wildcard include/config/pci/bootdelay.h) \
    $(wildcard include/config/dm/video.h) \
    $(wildcard include/config/bootstage.h) \
  include/membuff.h \
  include/init.h \
    $(wildcard include/config/dtb/reselect.h) \
    $(wildcard include/config/vid.h) \
  include/display_options.h \
  include/u-boot/crc.h \
  include/net.h \
    $(wildcard include/config/sys/rx/eth/buffer.h) \
    $(wildcard include/config/dm/eth.h) \
    $(wildcard include/config/mcast/tftp.h) \
    $(wildcard include/config/bootp/dns2.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/netconsole.h) \
  arch/arm/include/asm/cache.h \
    $(wildcard include/config/sys/thumb/build.h) \
    $(wildcard include/config/sys/cacheline/size.h) \
  arch/arm/include/asm/system.h \
    $(wildcard include/config/armv8/psci.h) \
    $(wildcard include/config/armv7/lpae.h) \
    $(wildcard include/config/cpu/v7.h) \
  arch/arm/include/asm/barriers.h \
  include/bootstage.h \
    $(wildcard include/config/show/boot/progress.h) \
  include/api.h \
  include/console.h \
    $(wildcard include/config/console/mux.h) \
  include/iomux.h \
  include/stdio_dev.h \
    $(wildcard include/config/sys/stdio/deregister.h) \
    $(wildcard include/config/cfb/console.h) \
    $(wildcard include/config/keyboard.h) \
    $(wildcard include/config/usb/tty.h) \
    $(wildcard include/config/jtag/console.h) \
    $(wildcard include/config/cbmem/console.h) \
  include/dm.h \
  include/dm/ofnode.h \
  include/fdtdec.h \
    $(wildcard include/config/of/board.h) \
    $(wildcard include/config/of/separate.h) \
  include/linux/libfdt.h \
  include/linux/libfdt_env.h \
  include/linux/../../scripts/dtc/libfdt/libfdt.h \
  include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  include/linux/../../scripts/dtc/libfdt/fdt.h \
  include/pci.h \
    $(wildcard include/config/sys/pci/64bit.h) \
    $(wildcard include/config/pci/indirect/bridge.h) \
    $(wildcard include/config/dm/pci/compat.h) \
    $(wildcard include/config/pci/fixup/dev.h) \
    $(wildcard include/config/pcie/imx.h) \
  include/pci_ids.h \
  include/dm/of.h \
  include/dm/device.h \
    $(wildcard include/config/devres.h) \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/loglevel.h) \
  include/linux/compat.h \
    $(wildcard include/config/lbdaf.h) \
  include/malloc.h \
    $(wildcard include/config/sys/malloc/simple.h) \
  include/linux/err.h \
  include/dm/fdtaddr.h \
  include/dm/read.h \
    $(wildcard include/config/dm/dev/read/inline.h) \
  include/dm/uclass.h \
  include/dm/platdata.h \
    $(wildcard include/config/of/platdata.h) \
  include/environment.h \
    $(wildcard include/config/env/is/in/flash.h) \
    $(wildcard include/config/env/offset.h) \
    $(wildcard include/config/env/addr/redund.h) \
    $(wildcard include/config/env/offset/redund.h) \
    $(wildcard include/config/env/sect/size.h) \
    $(wildcard include/config/env/size/redund.h) \
    $(wildcard include/config/sys/redundand/environment.h) \
    $(wildcard include/config/env/is/in/mmc.h) \
    $(wildcard include/config/env/is/in/nand.h) \
    $(wildcard include/config/env/offset/oob.h) \
    $(wildcard include/config/env/is/in/ubi.h) \
    $(wildcard include/config/env/ubi/part.h) \
    $(wildcard include/config/env/ubi/volume.h) \
    $(wildcard include/config/env/ubi/volume/redund.h) \
    $(wildcard include/config/cmd/ubi.h) \
    $(wildcard include/config/env/is/in/onenand.h) \
    $(wildcard include/config/env/is/in/spi/flash.h) \
    $(wildcard include/config/sys/mmc/env/part.h) \
    $(wildcard include/config/cmd/saveenv.h) \
  include/env_attr.h \
  include/env_callback.h \
    $(wildcard include/config/env/callback/list/static.h) \
    $(wildcard include/config/silent/console.h) \
    $(wildcard include/config/splashimage/guard.h) \
    $(wildcard include/config/regex.h) \
  include/env_flags.h \
    $(wildcard include/config/env/flags/list/static.h) \
    $(wildcard include/config/env/overwrite.h) \
    $(wildcard include/config/overwrite/ethaddr/once.h) \
    $(wildcard include/config/cmd/env/flags.h) \
  include/search.h \
  include/initcall.h \
  include/mapmem.h \
    $(wildcard include/config/arch/map/sysmem.h) \
  include/mmc.h \
    $(wildcard include/config/mmc/sunxi/use/dma.h) \
    $(wildcard include/config/mmc/hs200/support.h) \
    $(wildcard include/config/mmc/uhs/support.h) \
    $(wildcard include/config/dm/mmc.h) \
    $(wildcard include/config/mmc/write.h) \
    $(wildcard include/config/mmc/hw/partitioning.h) \
    $(wildcard include/config/dm/regulator.h) \
    $(wildcard include/config/cmd/bkops/enable.h) \
    $(wildcard include/config/mmc/spi.h) \
    $(wildcard include/config/sys/mmc/max/blk/count.h) \
  include/linux/sizes.h \
  include/nand.h \
    $(wildcard include/config/nand/fsl/elbc.h) \
    $(wildcard include/config/nand/fsl/ifc.h) \
    $(wildcard include/config/sys/nand/self/init.h) \
    $(wildcard include/config/nand/atmel.h) \
    $(wildcard include/config/sys/nand/select/device.h) \
  include/linux/mtd/mtd.h \
    $(wildcard include/config/sys/nand/max/oobfree.h) \
    $(wildcard include/config/mtd/debug.h) \
    $(wildcard include/config/mtd/debug/verbose.h) \
  include/mtd/mtd-abi.h \
  include/div64.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/mtd/rawnand.h \
  include/linux/mtd/flashchip.h \
  include/linux/mtd/bbm.h \
    $(wildcard include/config/sys/nand/max/chips.h) \
  include/of_live.h \
  include/onenand_uboot.h \
  include/scsi.h \
  include/serial.h \
    $(wildcard include/config/sys/post/uart.h) \
    $(wildcard include/config/tegra.h) \
    $(wildcard include/config/sys/coreboot.h) \
  include/post.h \
    $(wildcard include/config/post/external/word/funcs.h) \
    $(wildcard include/config/sys/post/word/addr.h) \
    $(wildcard include/config/mpc8360.h) \
    $(wildcard include/config/sys/immr.h) \
    $(wildcard include/config/sys/mpc85xx/pic/offset.h) \
    $(wildcard include/config/sys/mpc86xx/pic/offset.h) \
    $(wildcard include/config/sys/post/rtc.h) \
    $(wildcard include/config/sys/post/watchdog.h) \
    $(wildcard include/config/sys/post/memory.h) \
    $(wildcard include/config/sys/post/cpu.h) \
    $(wildcard include/config/sys/post/i2c.h) \
    $(wildcard include/config/sys/post/cache.h) \
    $(wildcard include/config/sys/post/ether.h) \
    $(wildcard include/config/sys/post/usb.h) \
    $(wildcard include/config/sys/post/spr.h) \
    $(wildcard include/config/sys/post/sysmon.h) \
    $(wildcard include/config/sys/post/dsp.h) \
    $(wildcard include/config/sys/post/ocm.h) \
    $(wildcard include/config/sys/post/fpu.h) \
    $(wildcard include/config/sys/post/ecc.h) \
    $(wildcard include/config/sys/post/bspec1.h) \
    $(wildcard include/config/sys/post/bspec2.h) \
    $(wildcard include/config/sys/post/bspec3.h) \
    $(wildcard include/config/sys/post/bspec4.h) \
    $(wildcard include/config/sys/post/bspec5.h) \
    $(wildcard include/config/sys/post/codec.h) \
    $(wildcard include/config/sys/post/coproc.h) \
    $(wildcard include/config/sys/post/flash.h) \
    $(wildcard include/config/sys/post/mem/regions.h) \
  arch/arm/include/asm/io.h \
  arch/arm/include/asm/memory.h \
    $(wildcard include/config/discontigmem.h) \
  include/asm-generic/io.h \
  include/iotrace.h \
    $(wildcard include/config/io/trace.h) \
  include/spi.h \
  include/timer.h \
  include/trace.h \
  include/watchdog.h \
    $(wildcard include/config/watchdog.h) \
    $(wildcard include/config/hw/watchdog.h) \
  arch/arm/include/asm/sections.h \
  include/asm-generic/sections.h \
  include/dm/root.h \
    $(wildcard include/config/dm/device/remove.h) \
  include/efi_loader.h \
    $(wildcard include/config/efi/loader/bounce/buffer.h) \
    $(wildcard include/config/cmd/bootefi/selftest.h) \
  include/efi_api.h \
  include/fdt_support.h \
    $(wildcard include/config/arch/fixup/fdt/memory.h) \
    $(wildcard include/config/usb/ehci/fsl.h) \
    $(wildcard include/config/usb/xhci/fsl.h) \
    $(wildcard include/config/sys/fsl/sec/compat.h) \
    $(wildcard include/config/sys/fdt/pad.h) \
    $(wildcard include/config/fdt/fixup/partitions.h) \
    $(wildcard include/config/fman/enet.h) \
    $(wildcard include/config/fsl/mc/enet.h) \
  include/sunxi_board.h \
    $(wildcard include/config/generic/mmc.h) \
    $(wildcard include/config/display/boardinfo.h) \
    $(wildcard include/config/use/neon/simd.h) \
    $(wildcard include/config/detect/rtc/boot/mode.h) \
    $(wildcard include/config/sunxi/overlay.h) \
    $(wildcard include/config/sunxi/switch/system.h) \
    $(wildcard include/config/sunxi/update/remind.h) \
    $(wildcard include/config/xtensa/dsp.h) \
  include/spare_head.h \
  include/sunxi_flash.h \
  include/sunxi_nand.h \
  include/clk/clk.h \
  include/clk/clk_plat.h \
    $(wildcard include/config/common/clk/debug.h) \
  arch/arm/include/asm/gpio.h \
    $(wildcard include/config/arch/uniphier.h) \
    $(wildcard include/config/arch/sti.h) \
  arch/arm/include/asm/arch/gpio.h \
    $(wildcard include/config/axp/gpio.h) \
  include/asm-generic/gpio.h \
  arch/arm/include/asm/arch/rtc.h \

common/board_r.o: $(deps_common/board_r.o)

$(deps_common/board_r.o):
