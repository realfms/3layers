#!/bin/bash

JSPPATH=/var/lib/tomcat6/webapps/cddemo/index.jsp

if [[ "$1" == "" ]]
then
	echo "Usage: config-be.sh <MYSQL IP>"
	exit 1
fi

if [ ! -f $JSPPATH.orig ]
then
	cp $JSPPATH $JSPPATH.orig
fi
sed $JSPPATH.orig -e "s/MYSQL_IP/$1/" > $JSPPATH

