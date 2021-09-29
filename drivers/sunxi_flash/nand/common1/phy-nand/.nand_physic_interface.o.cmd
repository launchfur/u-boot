cmd_drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.o := ./../tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-gcc -Wp,-MD,drivers/sunxi_flash/nand/common1/phy-nand/.nand_physic_interface.o.d  -nostdinc -isystem /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabi/7.2.1/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -I./include/openssl -D__KERNEL__ -D__UBOOT__ -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -Werror -Wno-packed-bitfield-compat -fshort-wchar -Os -fno-stack-protector -fno-delete-null-pointer-checks -g -fstack-usage -Wno-format-nonliteral -Werror=date-time -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -I./arch/arm/mach-sunxi/include    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(nand_physic_interface)"  -D"KBUILD_MODNAME=KBUILD_STR(nand_physic_interface)" -c -o drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.o drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.c

source_drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.o := drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.c

deps_drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.o := \
    $(wildcard include/config/sunxi/ubifs.h) \
  include/stdio.h \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/tpl/serial/support.h) \
    $(wildcard include/config/spl/serial/support.h) \
  /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/lib/gcc/arm-linux-gnueabi/7.2.1/include/stdarg.h \
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
  arch/arm/include/asm/types.h \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/lib/gcc/arm-linux-gnueabi/7.2.1/include/stdbool.h \
  include/sunxi_nand.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.h \
  drivers/sunxi_flash/nand/common1/phy-nand/../aw_nand_type.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/phy.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/../rawnand/rawnand.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/../rawnand/../../aw_nand_type.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/../rawnand/../nand_errno.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/../rawnand/rawnand_cfg.h \
    $(wildcard include/config/arch/sun8iw18.h) \
    $(wildcard include/config/mach/sun50iw11.h) \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/../spinand/spinand_type.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/../spinand/../nand_errno.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/../spinand/../../aw_nand_type.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand-partition/mbr.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_chip.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/controller/ndfc_base.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/controller/../rawnand_cfg.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/controller/../rawnand.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/controller/ndfc_base.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_base.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/../../aw_nand_type.h \
  drivers/sunxi_flash/nand/common1/phy-nand/rawnand/rawnand_cfg.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand_boot.h \
  drivers/sunxi_flash/nand/common1/phy-nand/spinand/spinand.h \
  drivers/sunxi_flash/nand/common1/phy-nand/spinand/../nand-partition/phy.h \
  include/linux/mtd/aw-spinand-nftl.h \
  drivers/sunxi_flash/nand/common1/phy-nand/nand_weak.h \
  drivers/sunxi_flash/nand/common1/phy-nand/../nand_osal_uboot.h \
  drivers/sunxi_flash/nand/common1/phy-nand/../aw_nand_type.h \

drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.o: $(deps_drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.o)

$(deps_drivers/sunxi_flash/nand/common1/phy-nand/nand_physic_interface.o):
