FROM dyunin/php7.2-fpm


COPY php-ini-overrides.ini /etc/php/7.2/fpm/conf.d/90-php.ini
COPY php-ini-overrides.ini /etc/php/7.2/cli/conf.d/90-php.ini

ARG APP_UID

RUN usermod -u $APP_UID www-data


EXPOSE 9000
