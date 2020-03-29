FROM nginx:stable-alpine

COPY nginx.conf /etc/nginx/nginx.conf

ARG APP_UID

RUN adduser -u $APP_UID --disabled-password --gecos "" app \
    && addgroup app nginx \
    && mkdir -p /var/www/html && chown -R app:app /var/www

EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
