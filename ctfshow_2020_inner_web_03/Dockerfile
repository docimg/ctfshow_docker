FROM xk0n/cve-2016-1247

RUN rm -rf /var/www/ && mkdir -p /var/www/html && rm -rf /tmp/* && rm -rf /var/log/nginx/*

COPY _files /tmp/
COPY src /var/www/html/

RUN mv /tmp/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint \
    && mv /tmp/logr.sh /root/logr.sh \
    && echo "1 *	* * *	root    /root/logr.sh" >> /etc/crontab \
    && chmod +x /usr/local/bin/docker-php-entrypoint \
    && sed -i 's/\/usr\/share\/nginx\/html/\/var\/www\/html/g' /etc/nginx/sites-enabled/default \
    && sed -i 's/index.htm;/index.php;/g' /etc/nginx/sites-enabled/default \
    && sed -i 's/\/var\/www;/\/var\/www\/html;/g' /etc/nginx/sites-enabled/default \
    && chown -R www-data:www-data /var/www/html \
    && rm -rf /bin/sh \
    && ln -s /bin/bash /bin/sh

WORKDIR /var/www/html

EXPOSE 80

CMD ["/bin/bash","-c","docker-php-entrypoint"]
