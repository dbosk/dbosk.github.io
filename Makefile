PUBDIRS= 	csc sys miun

SERVER-csc= u-shell.csc.kth.se
PUBDIR-csc= /afs/nada.kth.se/home/x/u13aecix/public_html/
PUBCMD-csc= git archive kth ${PUB_FILES} | \
			ssh ${SERVER-${dir}} pax -r -s ",^,${PUBDIR-${dir}},";

SERVER-sys= sftp.sys.kth.se
PUBDIR-sys= /home/d/b/dbosk/public_html/
PUBCMD-sys= ${PUBCMD-csc}

SERVER-miun=apachepersonal.miun.se
PUBDIR-miun=/home/danbos/
PUBCMD-miun=git archive miun ${PUB_FILES} | \
			ssh ${SERVER-${dir}} pax -r -s ",^,${PUBDIR-${dir}},";

PUB_FILES= 	index.html dbosk.jpg

publish:
	$(foreach dir,${PUBDIRS},${PUBCMD-${dir}})
