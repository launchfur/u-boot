cmd_net/built-in.o :=  ./../tools/toolchain/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabi/bin/arm-linux-gnueabi-ld.bfd     -r -o net/built-in.o net/checksum.o net/arp.o net/eth_legacy.o net/eth_common.o net/net.o 
