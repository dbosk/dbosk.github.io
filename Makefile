PUB_SITES?= 		miun

PUB_SERVER-miun= 	apachepersonal.miun.se
PUB_DIR-miun= 		/home/danbos/
PUB_METHOD-miun= 	git
PUB_BRANCH-miun= 	miun

PUB_FILES= 			index.html index.css dbosk.jpg

.PHONY: clean
clean:
	true


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/pub.mk
