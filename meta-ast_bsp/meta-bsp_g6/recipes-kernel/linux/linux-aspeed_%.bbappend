FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://bsp_g6.cfg"


# for debug
#srcuri = d.getVar('SRC_URI', True).split()
python do_print_src () {
    # should probably be indented
    srcuri = d.getVar('SRC_URI', True).split()
    bb.warn("SDK KERNEL SRC_URI look like: %s" % srcuri)
    thisdir =  d.getVar('THISDIR', True).split()
    bb.warn("thisdir look like: %s" % thisdir)
    pn =  d.getVar('PN', True).split()
    bb.warn("pn look like: %s" % pn)
}
addtask do_print_src before do_compile after do_unpack

do_my_message(){
    # my work
    bbwarn 'Hello, this is a debug message from linux bbappend'
}
addtask do_my_message before do_compile
python do_unpack:append() {
bb.warn("Hello, this is a debug message from linux bbappend - do_unpack SRCREV = %s" % "196c4235a56a0afe98fa5a5fa2a87751836dfb05")
#bb.warn("Hello, this is a debug message from linux bbappend - SRC_URI = %s" % srcuri)
#do_print_src ()
}
