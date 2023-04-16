FILESEXTRAPATHS:prepend:romulus := "${THISDIR}/${PN}:"
RDEPENDS:${PN}-inventory:append:romulus = " openpower-occ-control id-button"
RDEPENDS:${PN}-extras:append:romulus = " webui-vue phosphor-image-signing"
addtask do_ibm_debug_info before do_fetch
