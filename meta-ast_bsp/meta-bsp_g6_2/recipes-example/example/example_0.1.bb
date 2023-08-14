DESCRIPTION = "Simple example application"

LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://example.c"
SRC_URI  += "file://gpio_led.c"
SRC_URI  += "file://gpio_input.c"
SRC_URI  += "file://gpio_event.c"

DEPENDS = "libgpiod"

S = "${WORKDIR}"

do_compile() {
    ${CC} example.c ${LDFLAGS} -o example
    ${CC} gpio_led.c ${LDFLAGS} -lgpiod -o gpio_led
    ${CC} gpio_input.c ${LDFLAGS} -lgpiod -o gpio_input
} 

#        
#    ${CC} gpio_event.c ${LDFLAGS} -lgpiod -o gpio_event       

do_install() {
    install -d ${D}${bindir}

    install -m 0755 example    ${D}${bindir}
    install -m 0755 gpio_led   ${D}${bindir}
    install -m 0755 gpio_input ${D}${bindir}
}
#    install -m 0755 gpio_input ${D}${bindir}
#    install -m 0755 gpio_event ${D}${bindir}
addtask display_banner before do_build
