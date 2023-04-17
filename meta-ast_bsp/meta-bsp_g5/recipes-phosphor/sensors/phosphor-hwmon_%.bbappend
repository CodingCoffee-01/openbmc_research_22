FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
EXTRA_OEMESON:append = " -Dnegative-errno-on-fail=true"


CHIPS = " \
        bus@1e78a000/i2c-bus@440/w83773g@4c \
        "

ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
#SYSTEMD_ENVIRONMENT_FILE:${PN}:append = " ${@compose_list(d, 'ENVS', 'OCCITEMS')}"

addtask do_debug_info before do_fetch
