DESCRIPTION = "Simple example application"

LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://example.c"
#SRC_URI += "file://example2.c"
SRC_URI  += "file://gpio_ex1.c"

DEPENDS = "libgpiod"

S = "${WORKDIR}"

do_compile() {
    ${CC} example.c ${LDFLAGS} -o example
    ${CC} gpio_ex1.c ${LDFLAGS} -lgpiod -o gpio_1    
} 
#   ${CC} gpio_ex1.c ${LDFLAGS} -lgpiod -o gpio_1
do_install() {
    install -d ${D}${bindir}

    install -m 0755 example ${D}${bindir}
    install -m 0755 gpio_1 ${D}${bindir}
}

addtask display_banner before do_build
