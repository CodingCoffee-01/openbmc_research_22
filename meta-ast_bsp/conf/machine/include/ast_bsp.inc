KERNEL_DEVICETREE = "aspeed-ast2500-evb.dtb"
UBOOT_MACHINE = "ast_g5_phy_config"

require conf/machine/include/ast_bsp.inc
require conf/machine/include/obmc-bsp-common.inc
require conf/machine/include/obmc-evb-common.inc
require conf/machine/include/arm/armv6/tune-arm1176jz-s.inc

SERIAL_CONSOLES = "115200;ttyS4"

PREFERRED_PROVIDER_virtual/kernel ?= "linux-aspeed"
PREFERRED_PROVIDER_virtual/bootloader ?= "u-boot-aspeed"
PREFERRED_PROVIDER_u-boot ?= "u-boot-aspeed"
PREFERRED_PROVIDER_u-boot-fw-utils ?= "u-boot-fw-utils-aspeed"

#PREFERRED_PROVIDER_virtual/phosphor-led-manager-config-native = "dl360poc-led-manager-config-native"

#VIRTUAL-RUNTIME_obmc-fan-control ?= "phosphor-pid-control"
