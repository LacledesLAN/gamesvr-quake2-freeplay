#!/bin/sh
ipaddr="$(ifconfig eno1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')"

cd ~/quake2
./q2proded-64 +set dedicated 1 +game railctf +map q2ctf1 +exec server.cfg +rcon_password password +set server_ip "$ipaddr"
