FROM alpine:latest

RUN apk add --update nginx && \
    rm -rf /var/cache/apk/* && \
    chown -R nginx:www-data /var/lib/nginx && \
    ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
ENTRYPOINT ["/usr/sbin/nginx"]
