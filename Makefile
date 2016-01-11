PUB_SITES?= 		csc sys

PUB_SERVER-csc= 	priv-shell.csc.kth.se
PUB_DIR-csc= 		/afs/nada.kth.se/home/x/u13aecix/public_html/
PUB_METHOD-csc= 	git

PUB_SERVER-sys= 	sftp.sys.kth.se
PUB_DIR-sys= 		/home/d/b/dbosk/public_html/
PUB_METHOD-sys= 	git

PUB_BRANCH= 		kth
PUB_FILES= 			index.html index.css dbosk.jpg
PUB_FILES+= 		undergradprops.html

.PHONY: clean
clean:
	true


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/pub.mk
