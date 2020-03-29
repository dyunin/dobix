FROM localhost:5001/php7.2-cli

RUN export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get -y --no-install-recommends install php7.2-fpm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

COPY overrides.conf /etc/php/7.2/fpm/pool.d/z-overrides.conf

COPY php-fpm-startup /usr/bin/php-fpm
CMD /usr/bin/php-fpm

EXPOSE 9000
