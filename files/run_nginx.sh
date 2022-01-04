#!/bin/sh
php-fpm8.0 -D &
nginx -g 'daemon off;' &
