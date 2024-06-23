### build openbmc yocto environment 

  sudo apt update 
  sudo apt-get -y install libsdl1.2-dev xterm sed cvs subversion coreutils texi2html docbook-utils help2man make gcc g++ desktop-file-utils libgl1-mesa-dev libglu1-mesa-dev mercurial autoconf automake groff curl lzop asciidoc u-boot-tools gawk wget git-core diffstat unzip texinfo gcc-multilib build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping  diffstat    liblz4-tool zstd qemu-system-aarch64 && sudo apt-get -y install gcc-aarch64-linux-gnu

### how to build OpenBMC image

build and deploy uboot, kernel , whole image 

	bitbake -f  u-boot-aspeed-sdk -c compile && bitbake -f  linux-aspeed -c compile && bitbake -c deploy -f u-boot-aspeed-sdk && bitbake -c deploy -f linux-aspeed && bitbake obmc-phosphor-image 

### how to test  OpenBMC image 

	./qemu-system-arm -m 256 -M romulus-bmc -nographic -drive file=./image-bmc_romulus,format=raw,if=mtd -net nic -net user,hostfwd=:127.0.0.1:2222-:22,hostfwd=:127.0.0.1:2443-:443,hostfwd=udp:127.0.0.1:2623-:623,hostname=qemu
