PUB_SITES?= 		miun

PUB_SERVER-miun= 	apachepersonal.miun.se
PUB_DIR-miun= 		/home/danbos/
PUB_METHOD-miun= 	ssh

PUB_FILES= 			index.html dbosk-scaled.jpg


.PHONY: all
all: index.html

index.html: index.md
	pandoc -st html $< > $@


all: dbosk-scaled.jpg

dbosk-scaled.jpg: dbosk.jpg
	convert $< -resize 104x160 $@


.PHONY: clean
clean:
	${RM} index.html
	${RM} dbosk-scaled.jpg


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/pub.mk
