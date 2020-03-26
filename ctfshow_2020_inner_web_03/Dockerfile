FROM xk0n/cve-2016-1247

RUN rm -rf /var/www/ && mkdir -p /var/www/html && rm -rf /tmp/*

COPY _files /tmp/
COPY src /var/www/html/

RUN sed -i 's/mirrors.163.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt-get update \
    # && apt-get install -y python-software-properties software-properties-common \
    && apt-get install -y php5-fpm \
    && mv /tmp/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint \
    && chmod +x /usr/local/bin/docker-php-entrypoint \
    && mv /tmp/nginx.conf /etc/nginx/nginx.conf \
    && chown -R www-data:www-data /var/www/html \
    && cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini \
    # && rm -rf /bin/sh \
    # && ln -s /bin/bash /bin/sh

WORKDIR /var/www/html

EXPOSE 80

CMD ["/bin/bash","-c","docker-php-entrypoint"]
