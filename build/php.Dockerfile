FROM alpine:3.16

RUN apk add --no-cache php81-fpm

#RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY ./build/php-fpm.d/www.conf /etc/php81/php-fpm.d/www.conf

WORKDIR /var/www/html

EXPOSE 9000

CMD ["php-fpm81", "--nodaemonize"]
