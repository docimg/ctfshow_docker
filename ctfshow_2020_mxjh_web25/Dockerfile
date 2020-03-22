FROM docimg/baseimg_mysql_php73_apache:v1.0

COPY _files /tmp/
COPY src /var/www/html

RUN sh -c 'mysqld_safe &' \
    && sleep 5s \
    && mysqladmin -uroot -proot password 'ctfshow' \
    && mysql -e "source /var/www/html/db.sql;" -uroot -pctfshow \
    # configure file
    && mv /tmp/flag.sh /flag.sh \
    && chmod +x /flag.sh \
    && mv /tmp/php.ini /usr/local/etc/php \
    # clear
    && rm -rf /var/www/html/db.sql \
    && rm -rf /tmp/*

WORKDIR /var/www/html

EXPOSE 80

CMD ["source", "-c", "/flag.sh"]
