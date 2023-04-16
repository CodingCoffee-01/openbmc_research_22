FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
#FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}:"
EXTRA_OEMESON:append = " -Dnegative-errno-on-fail=true"

CHIPS = " \
	bus@1e78a000/i2c-bus@200/max31785@52 \
        bus@1e78a000/i2c-bus@200/power-supply@68 \
        bus@1e78a000/i2c-bus@200/power-supply@69 \
        bus@1e78a000/i2c-bus@200/bmp280@77 \
        bus@1e78a000/i2c-bus@200/dps310@76 \
	pwm-tacho-controller@1e786000 \
        "

ITEMSFMT         = "ahb/apb/{0}.conf"
ITEMS            = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"
ITEMS:append    += "iio-hwmon-battery.conf"

OCCSFMT = "devices/platform/gpio-fsi/fsi0/slave@00--00/{0}.conf"
OCCITEMS:append = "${@compose_list(d, 'OCCSFMT', 'OCCS')}"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE_${PN}:append = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append = " ${@compose_list(d, 'ENVS', 'OCCITEMS')}"

addtask do_debug_info before do_fetch
