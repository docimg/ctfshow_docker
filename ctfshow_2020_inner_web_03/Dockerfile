FROM docimg/baseimg_php74_nginx162:v1.0

COPY _files /tmp/
COPY src /var/www/html/

RUN mv /tmp/docker-php-entrypoint /usr/local/bin/docker-php-entrypoint \
    && chmod +x /usr/local/bin/docker-php-entrypoint \
    && rm -rf /bin/sh \
    && ln -s /bin/bash /bin/sh
