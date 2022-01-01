#!/bin/sh
/usr/bin/mysqld_safe --timezone=UTC &

/usr/sbin/apachectl -DFOREGROUND -k start

tail -f /etc/hosts
