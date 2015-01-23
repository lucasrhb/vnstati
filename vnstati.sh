#!/bin/bash
# Lucas Ludziejewski / +rehabstudio
# required: vnstat, vnstati, webserver (apache, nginx, lighttpd, etc)
# Fire up this script with cron. Recommended 1h interval



# Directory for png results
imgdir="/var/www/infopage/net"

# Interface to monitor, or group of them in format "iface1+iface2"
interface="eth0"



vnstati -m -i $interface -o $imgdir/vnstat1.png
vnstati -vs -i $interface -o $imgdir/vnstat2.png
vnstati -h -c 15 -o $imgdir/vnstat3.png
vnstati -d -ne -nh -o $imgdir/vnstat4.png

exit 0;

