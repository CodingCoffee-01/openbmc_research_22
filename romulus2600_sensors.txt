# Romulus2600 sensors porting note

tree phosphor-hwmon

phosphor-hwmon
└── obmc
    └── hwmon
        ├── ahb
        │   └── apb
        │       ├── bus@1e78a000
        │       │   ├── i2c-bus@100
        │       │   │   ├── bmp280@77.conf
        │       │   │   ├── dps310@76.conf
        │       │   │   ├── max31785@52_air.conf
        │       │   │   ├── max31785@52_water.conf
        │       │   │   ├── power-supply@68.conf
        │       │   │   └── power-supply@69.conf
        │       │   ├── i2c-bus@140
        │       │   │   ├── ir35221@70.conf
        │       │   │   ├── ir35221@71.conf
        │       │   │   └── tmp423a@4c.conf
        │       │   ├── i2c-bus@180
        │       │   │   ├── ir35221@70.conf
        │       │   │   ├── ir35221@71.conf
        │       │   │   └── tmp423a@4c.conf
        │       │   ├── i2c-bus@200
        │       │   │   ├── bmp280@77.conf
        │       │   │   ├── dps310@76.conf
        │       │   │   ├── max31785@52_air.conf
        │       │   │   ├── max31785@52_water.conf
        │       │   │   ├── power-supply@68.conf
        │       │   │   └── power-supply@69.conf
        │       │   ├── i2c-bus@280
        │       │   │   ├── ir35221@70.conf
        │       │   │   ├── ir35221@71.conf
        │       │   │   └── tmp423a@4c.conf
        │       │   ├── i2c-bus@300
        │       │   │   ├── ir35221@70.conf
        │       │   │   ├── ir35221@71.conf
        │       │   │   └── tmp423a@4c.conf
        │       │   ├── i2c-bus@440
        │       │   │   ├── tmp275@42.conf
        │       │   │   ├── tmp275@46.conf
        │       │   │   ├── w83773g@48.conf
        │       │   │   ├── w83773g@4a.conf
        │       │   │   ├── w83773g@4c.conf
        │       │   │   └── w83773g@4e.conf
        │       │   ├── i2c-bus@500
        │       │   │   └── tmp275@4a.conf
        │       │   └── i2c-bus@680
        │       │       ├── tmp275@42.conf
        │       │       ├── tmp275@46.conf
        │       │       ├── w83773g@48.conf
        │       │       ├── w83773g@4a.conf
        │       │       ├── w83773g@4c.conf
        │       │       └── w83773g@4e.conf
        │       ├── pwm-tacho-controller@1e610000.conf
        │       ├── pwm-tacho-controller@1e786000.conf
        │       └── pwm-tacho-controller@1e786000.conf_old
        ├── devices
        │   └── platform
        │       └── gpio-fsi
        │           └── fsi0
        │               └── slave@00--00
        │                   ├── 00--00--00--06
        │                   │   └── sbefifo1-dev0
        │                   │       └── occ-hwmon.1.conf
        │                   └── 00--00--00--0a
        │                       └── fsi1
        │                           └── slave@01--00
        │                               └── 01--01--00--06
        │                                   └── sbefifo2-dev0
        │                                       └── occ-hwmon.2.conf
        ├── iio-hwmon-12v.conf
        ├── iio-hwmon-3v.conf
        ├── iio-hwmon-5v.conf
        └── iio-hwmon-battery.conf

## iio-hwmon-3v.conf examples:

LABEL_in1=3V
GAIN_in1=3

## w83773g@4a.conf examples:

LABEL_temp1 = "out_4a"
WARNHI_temp1 = "60000"
WARNLO_temp1 = "0"
CRITHI_temp1 = "70000"
CRITLO_temp1 = "0"

LABEL_temp2 = "inlet_4a"
WARNHI_temp2 = "60000"
WARNLO_temp2 = "0"
CRITHI_temp2 = "70000"
CRITLO_temp2 = "0"

LABEL_temp3 = "inlet_io_4a"
WARNHI_temp3 = "60000"
WARNLO_temp3 = "0"
CRITHI_temp3 = "70000"
CRITLO_temp3 = "0"

## tmp275@42.conf examples:

LABEL_temp1 = "outlet"
WARNHI_temp1 = "60000"
WARNLO_temp1 = "0"
CRITHI_temp1 = "70000"
CRITLO_temp1 = "0"

LABEL_temp2 = "inlet_cpu"
WARNHI_temp2 = "60000"
WARNLO_temp2 = "0"
CRITHI_temp2 = "70000"
CRITLO_temp2 = "0"

LABEL_temp3 = "inlet_io"
WARNHI_temp3 = "60000"
WARNLO_temp3 = "0"
CRITHI_temp3 = "70000"
CRITLO_temp3 = "0"

## ir35221@70.conf example :

#5-0070
#VDD then VCS

MODE_in1 = "label"
MODE_in2 = "label"
MODE_in3 = "label"
MODE_in4 = "label"

MODE_curr1 = "label"
MODE_curr2 = "label"
MODE_curr3 = "label"
MODE_curr4 = "label"

MODE_power1 = "label"
MODE_power2 = "label"
MODE_power3 = "label"
MODE_power4 = "label"

LABEL_temp1 = "p1_vdd_temp"
WARNHI_temp1 = "80000"
WARNLO_temp1 = "0"
CRITHI_temp1 = "85000"
CRITLO_temp1 = "0"

LABEL_curriout1 = "p1_vdd_current"
WARNLO_curriout1 = "0"
CRITLO_curriout1 = "0"
WARNHI_curriout1 = "320000"
CRITHI_curriout1 = "360000"

LABEL_invout1 = "p1_vdd_voltage"
WARNLO_invout1 = "0"
CRITLO_invout1 = "0"
WARNHI_invout1 = "1150"
CRITHI_invout1 = "1300"

LABEL_powerpout1 = "p1_vdd_power"
WARNLO_powerpout1 = "0"
CRITLO_powerpout1 = "0"
WARNHI_powerpout1 = "270000000"
CRITHI_powerpout1 = "290000000"

LABEL_temp2 = "p1_vcs_temp"
WARNHI_temp2 = "80000"
WARNLO_temp2 = "0"
CRITHI_temp2 = "85000"
CRITLO_temp2 = "0"

LABEL_curriout2 = "p1_vcs_current"
WARNLO_curriout2 = "0"
CRITLO_curriout2 = "0"
WARNHI_curriout2 = "20000"
CRITHI_curriout2 = "25000"

LABEL_invout2 = "p1_vcs_voltage"
WARNLO_invout2 = "0"
CRITLO_invout2 = "0"
WARNHI_invout2 = "1150"
CRITHI_invout2 = "1300"

LABEL_powerpout2 = "p1_vcs_power"
WARNLO_powerpout2 = "0"
CRITLO_powerpout2 = "0"
WARNHI_powerpout2 = "20000000"
CRITHI_powerpout2 = "25000000"

## power-supply@68.conf example :

LABEL_in1="ps1_input_voltage"
WARNHI_in1="290000"
WARNLO_in1="200000"
CRITHI_in1="300000"
CRITLO_in1="180000"

LABEL_in2="ps1_output_voltage"
WARNHI_in2="12700"
WARNLO_in2="0"
CRITHI_in2="13000"
CRITLO_in2="0"

LABEL_curr1="ps1_output_current"
WARNHI_curr1="170000"
WARNLO_curr1="0"
CRITHI_curr1="180000"
CRITLO_curr1="0"

LABEL_power1="ps1_input_power"
WARNHI_power1="2350000000"
WARNLO_power1="0"
CRITHI_power1="2500000000"
CRITLO_power1="0"

## pwm-tacho-controller@1e786000.conf

# Romulus has 7 fan ports but only 3 are used
LABEL_fan9 = "fan0"
LABEL_fan11 = "fan1"
LABEL_fan13 = "fan2"
LABEL_fan10 = "fan3"
LABEL_fan12 = "fan4"
LABEL_fan14 = "fan5"
LABEL_fan15 = "fan6"

PWM_TARGET_fan9 = "1"
PWM_TARGET_fan11 = "2"
PWM_TARGET_fan13 = "1"
PWM_TARGET_fan10 = "2"
PWM_TARGET_fan12 = "1"
PWM_TARGET_fan14 = "2"
PWM_TARGET_fan15 = "1"

## phosphor-hwmon_%.bbappend , need to add : 

CHIPS_romulus2600 = " \
		      bus@1e78a000/i2c-bus@200/power-supply@68 \
                      bus@1e78a000/i2c-bus@200/power-supply@69 \
		      bus@1e78a000/i2c-bus@680/tmp275@42\
	              bus@1e78a000/i2c-bus@680/tmp275@46\
	              bus@1e78a000/i2c-bus@200/bmp280@77 \
                      bus@1e78a000/i2c-bus@200/dps310@76 \
                      bus@1e78a000/i2c-bus@280/tmp423a@4c \
                      bus@1e78a000/i2c-bus@280/ir35221@70 \
                      bus@1e78a000/i2c-bus@280/ir35221@71 \
                      bus@1e78a000/i2c-bus@300/tmp423a@4c \
                      bus@1e78a000/i2c-bus@300/ir35221@70 \
                      bus@1e78a000/i2c-bus@300/ir35221@71 \
                      bus@1e78a000/i2c-bus@500/tmp275@4a \
                      pwm-tacho-controller@1e610000\
                    "
