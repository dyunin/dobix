FROM debian:stretch-slim

ENV TERM=linux

RUN apt-get update \
    && apt-get install -y --no-install-recommends gnupg apt-transport-https curl ca-certificates \
    && curl -s https://packages.sury.org/php/apt.gpg -o /etc/apt/trusted.gpg.d/php.gpg \
    && echo "deb https://packages.sury.org/php/ stretch main" > /etc/apt/sources.list.d/php.list \
    && apt-get update \
    && apt-get -y --no-install-recommends install curl ca-certificates unzip \
        php-memcache php-xdebug php7.2-cli php7.2-curl php7.2-gd\
        php7.2-json php7.2-mbstring php7.2-opcache \
        php7.2-xml php7.2-soap php7.2-zip php7.2-mysql \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer global require hirak/prestissimo \
    && composer clear-cache \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* ~/.composer

CMD ["php", "-a"]
