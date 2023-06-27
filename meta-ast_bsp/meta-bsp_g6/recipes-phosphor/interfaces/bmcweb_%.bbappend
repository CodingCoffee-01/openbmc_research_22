FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
EXTRA_OEMESON:append = " \
    -Dinsecure-tftp-update=enabled \
    -Drest=enabled \
"

inherit obmc-phosphor-discovery-service

#SRCREV = "42cbb517ffc573e9ec39077f5a59c1443e0ef9ea"

REGISTERED_SERVICES_${PN} += "obmc_redfish:tcp:443:"
REGISTERED_SERVICES_${PN} += "obmc_rest:tcp:443:"
addtask do_debug_info before do_fetch

