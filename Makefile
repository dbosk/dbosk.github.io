PUB_SITES?= 		jarvis

PUB_SERVER-jarvis= 	pepper.bosk.se
PUB_DIR-jarvis= 	/web/dbosk
PUB_METHOD-jarvis= 	git

PUB_BRANCH= 		master
PUB_FILES= 			index.html key.gpg.asc


.PHONY: all
all: index.html

index.html: index.md

%.html: %.md
	pandoc -f markdown -t html $< > $@


.PHONY: clean
clean:
	${RM} index.html


INCLUDE_MAKEFILES=makefiles
include ${INCLUDE_MAKEFILES}/pub.mk
