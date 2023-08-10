#!/bin/bash
composer update
/usr/sbin/httpd -D FOREGROUND

sed 's/{DB_USER}/${db_user}/' .env.template > .env