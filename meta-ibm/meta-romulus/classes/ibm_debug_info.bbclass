python do_ibm_debug_info () {
    # should probably be indented
    srcuri = d.getVar('SRC_URI', True).split()
    bb.warn("SRC_URI look like: %s" % srcuri)
    pn = d.getVar('PN', True).split()
    bb.warn("PN look like: %s" % pn)
}
