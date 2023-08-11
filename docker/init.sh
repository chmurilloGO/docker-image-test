#!/bin/bash
composer update
/usr/sbin/httpd -D FOREGROUND

sed 's/{DB_USER}/${db_user}/' /var/www/html/.env.template > /var/www/html/.env