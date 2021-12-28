#!/bin/sh
php-fpm -D
/usr/sbin/apachectl -D FOREGROUND
