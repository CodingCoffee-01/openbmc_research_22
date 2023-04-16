python do_op_debug_info () {
    # should probably be indented
    srcuri = d.getVar('SRC_URI', True).split()
    bb.warn("SRC_URI look like: %s" % srcuri)
    pn = d.getVar('PN', True).split()
    bb.warn("PN look like: %s" % pn)
    #hw_d = d.getVar('hwmon_dir', True).split()
    #bb.warn("hwmon_dir look like: %s" % hwmon_dir)
}
