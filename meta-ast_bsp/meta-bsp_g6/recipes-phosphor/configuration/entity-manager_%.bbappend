FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"
SRC_URI:append = " file://bsp_g5-baseboard.json \
                   file://bsp_g5-chassis.json"

do_install:append() {
     rm -f ${D}/usr/share/entity-manager/configurations/*.json
     install -d ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/bsp_g5-baseboard.json ${D}/usr/share/entity-manager/configurations
     install -m 0444 ${WORKDIR}/bsp_g5-chassis.json ${D}/usr/share/entity-manager/configurations
}
