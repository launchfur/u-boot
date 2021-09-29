cmd_drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.o := ./../tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-gcc -Wp,-MD,drivers/sunxi_flash/nand/common1/phy-nand/rawnand/.rawnand_cfg.o.d  -nostdinc -isystem /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabi/7.2.1/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -I./include/openssl -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Werror -Wno-packed-bitfield-compat -fshort-wchar -Os -fno-stack-protector -fno-delete-null-pointer-checks -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -I./arch/arm/mach-sunxi/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(rawnand_cfg)"  -D"KBUILD_MODNAME=KBUILD_STR(rawnand_cfg)" -c -o drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.o drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.c

source_drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.o := drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.c

deps_drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.o := \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.h \
    $(wildcard include/config/arch/sun8iw18.h) \
    $(wildcard include/config/mach/sun50iw11.h) \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/../../aw_nand_type.h \

drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.o: $(deps_drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.o)

$(deps_drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.o):
