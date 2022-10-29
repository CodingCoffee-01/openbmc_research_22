# romulus2600 machine note:
cp ./meta-ibm/meta-romulus/conf/machine/romulus.conf ./meta-ibm/meta-romulus/conf/machine/romulus2600.conf

## romulus2600.conf , please reference romulus2600.conf

## change u-boot src to openbmc 2.11 , avoid hash issue
meta-aspeed/recipes-bsp/u-boot/u-boot-common-aspeed-sdk_2019.04.inc
