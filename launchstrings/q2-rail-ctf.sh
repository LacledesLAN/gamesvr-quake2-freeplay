#!/bin/sh
ipaddr="$(ifconfig eno1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')"

cd ~/quake2
./quake2 +set dedicated 1 +game railwarz +map q2ctf1 +exec server.cfg +rcon_password password +set server_ip "$ipaddr"
