#!/bin/bash

RS="\033[0;31m"
YS="\033[1;33m"
CE="\033[0m"
C="\033[0m"
GN="\033[0;32m"
WHS="\033[0m"

printf '\033]2;uninstall.sh\a'

if [[ $EUID -ne 0 ]]
then
   sleep 1
   echo -e ""$GN"["$RS"+"$GN"]"$CE" This script must be run as root!"$C"" 1>&2
   sleep 1
   exit
fi

{
rm /bin/zoomby
rm /usr/local/bin/zoomy
rm -rf ~/zoomby
rm /etc/zoomby.conf
rm /data/data/com.termux/files/usr/bin/zoomby
} &> /dev/null
