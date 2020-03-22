FROM docimg/baseimg_mysql_php56_nginx:v1.0

COPY _files /tmp/
COPY src /var/www/html/

RUN sh -c 'mysqld_safe &' \
    && sleep 5s \
	&& mysql -uroot -proot -e "create user 'r00t'@'%' identified by 'Fish_k0u_z0ne';flush privileges;" \
	&& mysql -uroot -proot -e "create database ctfshow_kouzone;" \
	&& mysql -uroot -proot -e "grant all privileges on ctfshow_kouzone.* to 'r00t'@'localhost' identified by 'Fish_k0u_z0ne';flush privileges;" \
	&& mysql -ur00t -pFish_k0u_z0ne ctfshow_kouzone < /var/www/html/install.sql \
	# configure file
	&& mv /tmp/flag.sh /flag.sh \
    && mv /tmp/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint \
    && chmod +x /usr/local/bin/docker-php-entrypoint \
	# clear
    && rm -rf /var/www/html/install.sql \
    && rm -rf /tmp/*
