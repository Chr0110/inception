#!/bin/bash

# Start the services
/etc/init.d/nginx start
/etc/init.d/mysql start
/etc/init.d/php7.3-fpm start

# Configure MySQL
mysql -u root -e "CREATE DATABASE wordpress;"
mysql -u root -e "CREATE USER 'wordpress'@'%' IDENTIFIED BY 'password';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"

# Stop the services
/etc/init.d/nginx stop
/etc/init.d/mysql stop
/etc/init.d/php7.3-fpm stop

# Start the services in the foreground
nginx -g "daemon off;"
