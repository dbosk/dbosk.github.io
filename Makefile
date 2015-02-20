PUB_SITES?= 	csc sys

PUB_SERVER-csc= u-shell.csc.kth.se
PUB_DIR-csc= 	/afs/nada.kth.se/home/x/u13aecix/public_html/
PUB_METHOD-csc= git
PUB_BRANCH-csc= kth

PUB_SERVER-sys= sftp.sys.kth.se
PUB_DIR-sys= 	/home/d/b/dbosk/public_html/
PUB_METHOD-sys= git
PUB_BRANCH-sys= kth

### INCLUDES ###

INCLUDES= 	depend.mk pub.mk

define inc
ifeq ($(findstring $(1),${MAKEFILE_LIST}),)
$(1):
	wget https://raw.githubusercontent.com/dbosk/makefiles/master/$(1)
include $(1)
endif
endef
$(foreach i,${INCLUDES},$(eval $(call inc,$i)))
