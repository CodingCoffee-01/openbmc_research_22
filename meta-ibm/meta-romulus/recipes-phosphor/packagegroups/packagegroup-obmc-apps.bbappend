FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
RDEPENDS:${PN}-inventory:append = " openpower-occ-control id-button"
RDEPENDS:${PN}-extras:append = " webui-vue phosphor-image-signing"
addtask do_ibm_debug_info before do_fetch
