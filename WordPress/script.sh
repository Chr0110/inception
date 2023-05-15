#!/bin/bash

# Replace placeholders in wp-config.php file with environment variables
sed -i "s/database_name_here/"jamal"/g" /var/www/html/wp-config.php
sed -i "s/username_here/"eradi-"/g" /var/www/html/wp-config.php
sed -i "s/password_here/"mehdipress"/g" /var/www/html/wp-config.php
sed -i "s/localhost/"mariadb"/g" /var/www/html/wp-config.php

# Start PHP FPM
# php-fpm7.3
