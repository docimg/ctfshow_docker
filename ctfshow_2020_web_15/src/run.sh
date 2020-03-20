#! /usr/bin/env bash
mysql -uroot -e "create user 'r00t'@'%' identified by 'Fish_k0u_z0ne';flush privileges;"
mysql -uroot -e "create database ctfshow_kouzone;"
mysql -uroot -e "grant all privileges on ctfshow_kouzone.* to 'r00t'@'localhost' identified by 'Fish_k0u_z0ne';flush privileges;"
mysql -ur00t -pFish_k0u_z0ne ctfshow_kouzone < /var/www/html/install.sql
mysql -ur00t -pFish_k0u_z0ne -e "USE ctfshow_kouzone; insert into fl2222g values ('${FLAG}');"
rm -rf /var/www/html/run.sh
tail -F /dev/null