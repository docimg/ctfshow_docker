FROM docimg/baseimg_mysql_php73_apache:v1.0

RUN sh -c 'mysqld_safe &' \
    && sleep 5s \
    && mysqladmin -uroot -proot password 'ctfshow' \
    && mysql -uroot -pctfshow -e "source /var/www/html/db.sql;" \
    # configure file
    && mv /tmp/php.ini /usr/local/etc/php \
    # clear
    && rm -rf /var/www/html/db.sql
