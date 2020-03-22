FROM docimg/baseimg_mysql_php73_nginx:v1.0

COPY _files/php.ini /usr/local/etc/php/
COPY src /var/www/html

RUN sh -c 'mysqld_safe &' \
    && sleep 5s \
    && mysqladmin -uroot -proot password 'ctfshow' \
    && mysql -uroot -pctfshow -e "source /var/www/html/db.sql;" \
    # clear
    && rm -rf /var/www/html/db.sql
