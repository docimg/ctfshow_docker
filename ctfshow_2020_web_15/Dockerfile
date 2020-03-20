FROM docimg/baseimg_mysql_php73_apache

COPY src /var/www/html/

RUN chmod +x /var/www/html/run.sh && \
	rm /var/www/html/install.sql

WORKDIR /var/www/html

EXPOSE 80

CMD ["/bin/bash", "-c", "/var/www/html/run.sh"]