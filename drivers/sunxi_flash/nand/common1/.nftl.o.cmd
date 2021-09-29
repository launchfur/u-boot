cmd_drivers/sunxi_flash/nand/common1/nftl.o := ./../tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-gcc -Wp,-MD,drivers/sunxi_flash/nand/common1/.nftl.o.d  -nostdinc -isystem /home/gavin/workspace/ReadBoy/cowboy/lichee/brandy-2.0/tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabi/7.2.1/include -Iinclude    -I./arch/arm/include -include ./include/linux/kconfig.h -I./include/openssl -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -g -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -I./arch/arm/mach-sunxi/include   -c -o drivers/sunxi_flash/nand/common1/nftl.o drivers/sunxi_flash/nand/common1/nftl.S

source_drivers/sunxi_flash/nand/common1/nftl.o := drivers/sunxi_flash/nand/common1/nftl.S

deps_drivers/sunxi_flash/nand/common1/nftl.o := \

drivers/sunxi_flash/nand/common1/nftl.o: $(deps_drivers/sunxi_flash/nand/common1/nftl.o)

$(deps_drivers/sunxi_flash/nand/common1/nftl.o):
