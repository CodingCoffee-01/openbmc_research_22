KBRANCH ?= "dev-6.0"
LINUX_VERSION ?= "6.0.3"

SRCREV="f7377a165f1f58a59711119a10a3053b0f0a3897"

###  switch Kernel 5.15.x 
#KBRANCH ?= "dev-5.15"
#LINUX_VERSION ?= "5.15.61"
#SRCREV="3eec6f89c3c9dd462bba477a7adac4d26f2718b2"

# skip version sanity, because the version moves with AUTOREV
KERNEL_VERSION_SANITY_SKIP = "1"

require linux-aspeed.inc
