FROM xk0n/cve-2016-1247

RUN rm -rf /var/www/ && mkdir -p /var/www/html && rm -rf /tmp/* && rm -rf /var/log/nginx/*

COPY _files /tmp/
COPY src /var/www/html/

RUN sed -i 's/mirrors.163.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update \
    # entrypoint
    && mv /tmp/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint \
    && chmod +x /usr/local/bin/docker-php-entrypoint \
    # nginx config
    && sed -i 's/\/usr\/share\/nginx\/html/\/var\/www\/html/g' /etc/nginx/sites-enabled/default \
    && sed -i 's/index.htm;/index.php;/g' /etc/nginx/sites-enabled/default \
    && sed -i 's/\/var\/www;/\/var\/www\/html;/g' /etc/nginx/sites-enabled/default \
    && chown -R www-data:www-data /var/www/html \
    # chufa loudong
    && echo "*/1 *	* * *	root    /usr/sbin/logrotate -vf /etc/logrotate.d/nginx" >> /etc/crontab \
    # fix sh
    && rm -rf /bin/sh \
    && ln -s /bin/bash /bin/sh

WORKDIR /var/www/html

EXPOSE 80

CMD ["/bin/bash","-c","docker-php-entrypoint"]
