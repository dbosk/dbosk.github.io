PUB_SITES?= 		miun

PUB_SERVER-miun= 	apachepersonal.miun.se
PUB_DIR-miun= 		/home/danbos/
PUB_METHOD-miun= 	git
PUB_BRANCH-miun= 	miun

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
