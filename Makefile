PUBDIRS?= 	miun

SERVER-miun=apachepersonal.miun.se
PUBDIR-miun=/home/danbos/www/
PUBCMD-miun=git archive miun ${PUB_FILES} | \
			ssh ${SERVER-${dir}} pax -r -s ",^,${PUBDIR-${dir}},";

PUB_FILES= 	index.html dbosk.jpg

publish:
	$(foreach dir,${PUBDIRS},${PUBCMD-${dir}})
