FROM docimg/baseimg_mysql_php73_apache

COPY _files /tmp/
COPY src /var/www/html

RUN sh -c 'mysqld_safe &' \
    && sleep 5s \
    && mysqladmin -uroot -proot password 'ctfshow' \
    && mysql -e "source /var/www/html/db.sql;" -uroot -pctfshow \
    # configure file
    && mv /tmp/flag.sh /flag.sh \
    && mv /tmp/php.ini /usr/local/etc/php \
    && mv /tmp/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint \
    && chmod +x /usr/local/bin/docker-php-entrypoint \
    # clear
    && rm -rf /var/www/html/db.sql \
    && rm -rf /tmp/*

CMD ["/bin/bash", "-c", "docker-php-entrypoint"]
