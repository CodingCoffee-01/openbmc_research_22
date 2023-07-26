RDEPENDS:${PN}-extras:append = " \
    phosphor-software-manager \
    phosphor-ipmi-flash \
    phosphor-post-code-manager \
    phosphor-host-postd \
    phosphor-state-manager-chassis \
    "

RDEPENDS:${PN}-devtools:append = " \
    entity-manager \
    webui-vue \
    ldd \
    ethtool \
    net-tools \
    lmsensors-sensors \
    screen \
    ipmitool \
    "

PACKAGES += " \
    ${PN}-chassis \
    ${PN}-fans \
    ${PN}-system \
    "
PROVIDES += " \
     virtual/obmc-chassis-mgmt \
     virtual/obmc-fan-mgmt \
     virtual/obmc-system-mgmt \
     "

RPROVIDES:${PN}-system += "virtual-obmc-system-mgmt"
RPROVIDES:${PN}-fans += "virtual-obmc-fan-mgmt"
RPROVIDES:${PN}-chassis += "virtual-obmc-chassis-mgmt"
SUMMARY:${PN}-chassis = "bsp g5 Chassis"
RDEPENDS:${PN}-chassis += " \
    phosphor-state-manager-chassis \
    "

SUMMARY:${PN}-flash = "bsp g5 Flash"
RDEPENDS:${PN}-flash = " \
    phosphor-software-manager \
    phosphor-ipmi-flash \
    "

SUMMARY:${PN}-system = "bsp g5 System"
RDEPENDS:${PN}-system = " \
    	bmcweb \
    	webui-vue \
    	phosphor-host-postd \
    	phosphor-ipmi-kcs \
    	phosphor-post-code-manager \
    	"
