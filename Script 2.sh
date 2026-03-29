#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="mysql-server" # e.g. httpd, mysql, vlc, firefox
# Check if package is installed
if rpm -q $PACKAGE &>/dev/null; then
 echo "$PACKAGE is installed."
 rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
 echo "$PACKAGE is NOT installed."
fi
# TODO: Add a case statement that prints a one-line
# philosophy note about the package based on its name
case $PACKAGE in
 httpd) echo "Apache: the web server that built the open internet" ;;
 mysql) echo "MySQL: open source at the heart of millions of apps" ;;
 # TODO: Add your software and 3 others
esac
