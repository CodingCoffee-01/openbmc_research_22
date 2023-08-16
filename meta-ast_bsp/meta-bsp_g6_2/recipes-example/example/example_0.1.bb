DESCRIPTION = "Simple example application"

LICENSE = "MIT"

LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://example.c"
SRC_URI  += "file://gpioinfocxx.cpp"
SRC_URI  += "file://gpiodetectcxx.cpp"
SRC_URI  += "file://gpiofindcxx.cpp"
SRC_URI  += "file://gpiogetcxx.cpp"
SRC_URI  += "file://gpiomoncxx.cpp"
SRC_URI  += "file://gpiosetcxx.cpp"

DEPENDS = "libgpiod"

S = "${WORKDIR}"

do_compile() {
    ${CC} example.c ${LDFLAGS} -o example
    ${CXX} gpioinfocxx.cpp ${LDFLAGS} -lgpiodcxx -o gpio_info
    ${CXX} gpiodetectcxx.cpp ${LDFLAGS} -lgpiodcxx -o gpio_detect
    ${CXX} gpiofindcxx.cpp ${LDFLAGS} -lgpiodcxx -o gpio_find
    ${CXX} gpiogetcxx.cpp ${LDFLAGS} -lgpiodcxx -o gpio_get
    ${CXX} gpiomoncxx.cpp ${LDFLAGS} -lgpiodcxx -o gpio_mon
    ${CXX} gpiosetcxx.cpp ${LDFLAGS} -lgpiodcxx -o gpio_set
}

do_install() {
    install -d ${D}${bindir}

    install -m 0755 example    ${D}${bindir}
    install -m 0755 gpio_info ${D}${bindir}
    install -m 0755 gpio_detect ${D}${bindir}
    install -m 0755 gpio_find ${D}${bindir}
    install -m 0755 gpio_get ${D}${bindir}
    install -m 0755 gpio_mon ${D}${bindir}
    install -m 0755 gpio_set ${D}${bindir}
}


addtask do_print_src before do_compile after do_unpack

do_my_message(){
    # my work
    bbwarn 'Hello, this is a debug message from example .bb'
}

addtask do_my_message before do_compile
python do_unpack:append() {
bb.warn("Hello, this is a debug message from linux bbappend - do_unpack SRCREV = %s" % "196c4235a56a0afe98fa5a5fa2a87751836dfb05")
#bb.warn("Hello, this is a debug message from linux bbappend - SRC_URI = %s" % srcuri)
#do_print_src ()
}