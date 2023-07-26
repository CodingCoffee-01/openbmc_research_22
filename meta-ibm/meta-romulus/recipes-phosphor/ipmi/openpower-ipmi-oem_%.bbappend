DEPENDS:append = " romulus-yaml-config"

EXTRA_OECONF = " \
    INVSENSOR_YAML_GEN=${STAGING_DIR_HOST}${datadir}/romulus-yaml-config/ipmi-inventory-sensors.yaml \
    "
