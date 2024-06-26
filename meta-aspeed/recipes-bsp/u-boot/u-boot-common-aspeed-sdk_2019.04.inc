require conf/machine/distro/include/uboot-distrovars.inc

HOMEPAGE = "https://github.com/AspeedTech-BMC/u-boot"
SECTION = "bootloaders"
DEPENDS += "flex-native bison-native xxd-native"

LICENSE = "GPL-2.0-or-later"
LIC_FILES_CHKSUM = "file://Licenses/README;md5=30503fd321432fc713238f582193b78e"
PE = "1"

# We use the revision in order to avoid having to fetch it from the
# repo during parse
#SRCREV = "754cbe66efcd7ddc5fc75b8ee69a579c3f960efa"

# have hash match issue
#SRCREV = "8e834983d0a6b9265cee1674564b016565630883"  

# openbmc 2.11 no hash match issue
SRCREV = "a570745a1a836e351bd4b1131f23a4fa5013d6dd"

SRC_URI = "git://git@github.com/openbmc/u-boot.git;nobranch=1;protocol=https"

SRC_URI:append:uboot-flash-32768 = " file://u-boot_flash_32M.cfg"
SRC_URI:append:uboot-flash-65536 = " file://u-boot_flash_64M.cfg"

S = "${WORKDIR}/git"
B = "${WORKDIR}/build"
do_configure[cleandirs] = "${B}"

# We don't have 'u-boot-initial-env' target in our u-boot version
UBOOT_INITIAL_ENV=""

PV = "v2019.04+git${SRCPV}"
