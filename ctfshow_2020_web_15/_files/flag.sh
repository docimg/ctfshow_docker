#!/bin/sh

mysql -ur00t -pFish_k0u_z0ne -e "USE ctfshow_kouzone; insert into fl2333g values ('${FLAG}');"

rm -rf /flag.sh
