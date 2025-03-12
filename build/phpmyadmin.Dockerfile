FROM alpine:3.16

COPY config.inc.php /etc/phpmyadmin/config.inc.php
EXPOSE 8080