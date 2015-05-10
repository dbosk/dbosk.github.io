PUB_SITES?= 		jarvis

PUB_SERVER-jarvis= 	jarvis.bosk.se
PUB_DIR-jarvis= 	/home/dbosk/www
PUB_METHOD-jarvis= 	git

PUB_BRANCH= 		master
PUB_FILES= 			index.html

.PHONY: clean
clean:
	true


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/pub.mk
