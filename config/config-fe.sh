#!/bin/bash

WORKERPATH=/etc/httpd/conf/workers.properties

if [[ "$1" == "" ]]
then
	echo "Usage: config-be.sh <TOMCAT IP>"
	exit 1
fi

if [ ! -f $WORKERPATH.orig ]
then
	cp $WORKERPATH $WORKERPATH.orig
fi
sed $WORKERPATH.orig -e "s/TOMCAT_IP/$1/" > $WORKERPATH

/etc/init.d/httpd restart

