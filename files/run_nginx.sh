#!/bin/sh

php-fpm8.0 -D &

nginx -g 'daemon off;' &

tail -f /etc/hosts
