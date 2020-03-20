FROM docimg/baseimg_mysql_php73_apache

COPY src /var/www/html/

RUN sh -c 'mysqld_safe &' \
    && sleep 5s \
	&& mysql -uroot -proot -e "create user 'r00t'@'%' identified by 'Fish_k0u_z0ne';flush privileges;" \
	&& mysql -uroot -proot -e "create database ctfshow_kouzone;" \
	&& mysql -uroot -proot -e "grant all privileges on ctfshow_kouzone.* to 'r00t'@'localhost' identified by 'Fish_k0u_z0ne';flush privileges;" \
	&& mysql -ur00t -pFish_k0u_z0ne ctfshow_kouzone < /var/www/html/install.sql \
	&& mysql -ur00t -pFish_k0u_z0ne -e "USE ctfshow_kouzone; insert into fl2222g values ('${FLAG}');" \
	&& service apache2 start \
	&& rm /var/www/html/install.sql

WORKDIR /var/www/html

EXPOSE 80
