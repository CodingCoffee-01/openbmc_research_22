DEPENDS:append = " romulus-yaml-config"

EXTRA_OECONF = " \
    YAML_GEN=${STAGING_DIR_HOST}${datadir}/romulus-yaml-config/ipmi-fru-read.yaml \
    PROP_YAML=${STAGING_DIR_HOST}${datadir}/romulus-yaml-config/ipmi-extra-properties.yaml \
    "
