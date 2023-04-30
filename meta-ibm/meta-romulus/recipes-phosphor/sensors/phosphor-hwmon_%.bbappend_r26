FILESEXTRAPATHS:prepend             := "${THISDIR}/${PN}:"
FILESEXTRAPATHS:prepend:romulus2600 := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append:romulus = " -Dnegative-errno-on-fail=true"
EXTRA_OEMESON:append:romulus2600 = " -Dnegative-errno-on-fail=true"

CHIPS:romulus = " \
        bus@1e78a000/i2c-bus@440/w83773g@4c \
        pwm-tacho-controller@1e786000 \
	"
CHIPS:romulus2600 = " \
        pwm-tacho-controller@1e786000 \
        "


ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"

ITEMS:append:romulus     += "iio-hwmon-battery.conf"
ITEMS:append:romulus2600 += "iio-hwmon-battery.conf"
OCCS = " \
       00--00--00--06/sbefifo1-dev0/occ-hwmon.1 \
       00--00--00--0a/fsi1/slave@01--00/01--01--00--06/sbefifo2-dev0/occ-hwmon.2 \
       "

#OCCSFMT = "devices/platform/gpio-fsi/fsi0/slave@00--00/{0}.conf"
#OCCITEMS:append = "${@compose_list(d, 'OCCSFMT', 'OCCS')}"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append    = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
#SYSTEMD_ENVIRONMENT_FILE:${PN}:append:romulus2600 = " ${@compose_list(d, 'ENVS', 'OCCITEMS')}"

addtask do_ibm_debug_info before do_fetch
