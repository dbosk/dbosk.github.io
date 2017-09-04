PUB_SITES?= 		sys
PUB_METHOD?= 		ssh

PUB_SERVER-sys= 	sftp.sys.kth.se
PUB_DIR-sys= 		/home/d/b/dbosk/public_html/

PUB_FILES?= 		index.html dbosk-scaled.jpg


.PHONY: all
all: index.html

index.html: index.md
	pandoc -st html $< > $@


all: dbosk-scaled.jpg

dbosk-scaled.jpg: dbosk.jpg
	#convert $< -resize 52x80 $@
	convert $< -resize 104x160 $@


.PHONY: clean
clean:
	${RM} index.html
	${RM} dbosk-scaled.jpg


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/pub.mk
