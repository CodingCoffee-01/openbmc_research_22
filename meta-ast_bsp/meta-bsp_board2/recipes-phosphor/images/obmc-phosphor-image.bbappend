FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
OBMC_IMAGE_EXTRA_INSTALL:append = " phosphor-hwmon"
addtask do_debug_info before do_fetch
