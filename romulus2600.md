# romulus2600 machine note:
cp ./meta-ibm/meta-romulus/conf/machine/romulus.conf ./meta-ibm/meta-romulus/conf/machine/romulus2600.conf

## romulus2600.conf , please reference romulus2600.conf

## change u-boot src to openbmc 2.11 , avoid hash issue
meta-aspeed/recipes-bsp/u-boot/u-boot-common-aspeed-sdk_2019.04.inc

## machine dependent recipe list : 

meta-ibm/meta-romulus/recipes-phosphor/state/phosphor-state-manager_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/skeleton/obmc-libobmc-intf_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/packagegroups/packagegroup-obmc-apps.bbappend

meta-ibm/meta-romulus/recipes-phosphor/packagegroups/packagegroup-obmc-apps.bbappend

meta-ibm/meta-romulus/recipes-phosphor/mboxd/mboxd_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/ipmi/phosphor-ipmi-host_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/ipmi/phosphor-ipmi-fru_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/ipmi/openpower-ipmi-oem_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/images/obmc-phosphor-image.bbappend

meta-ibm/meta-romulus/recipes-phosphor/flash/phosphor-software-manager_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/fans/phosphor-fan-presence-config.bbappend

meta-ibm/meta-romulus/recipes-phosphor/fans/phosphor-fan-monitor-config.bbappend

meta-ibm/meta-romulus/recipes-phosphor/fans/phosphor-fan-control-zone-config.bbappend

meta-ibm/meta-romulus/recipes-phosphor/fans/phosphor-fan-control-fan-config.bbappend

meta-ibm/meta-romulus/recipes-phosphor/fans/phosphor-fan-control-events-config.bbappend

meta-ibm/meta-romulus/recipes-phosphor/console/obmc-console_%.bbappend

meta-ibm/meta-romulus/recipes-phosphor/sensors/phosphor-hwmon_%.bbappend

