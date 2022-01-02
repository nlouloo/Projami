#!/bin/sh
php-fpmxxx -D &

nginx -g 'daemon off;' &

tail -f /etc/hosts
