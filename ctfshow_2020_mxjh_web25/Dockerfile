FROM docimg/baseimg_mysql_php73_apache

COPY _files /tmp/
COPY src /var/www/html

RUN sh -c 'mysqld_safe &' \
    && sleep 5s \
    && mysqladmin -uroot -proot password 'ctfshow' \
    && mysql -e "source /var/www/html/db.sql;" -uroot -pctfshow \
    # configure file
    && mv /tmp/php.ini /usr/local/etc/php \
    && mv /tmp/flag.sh /flag.sh \
    # clear
    && rm -rf /var/www/html/db.sql \
    && rm -rf /tmp/*

CMD ["/bin/bash", "-c", "'source /flag.sh'"]
