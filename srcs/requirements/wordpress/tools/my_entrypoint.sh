cd /var/www/html/wordpress
wp core download  --path="/var/www/html/wordpress" --allow-root
wp config create --path="/var/www/html/wordpress" --allow-root --dbname=$MYSQL_DB_DATABASE --dbuser=$MYSQL_DB_USER --dbpass=$MYSQL_DB_USER_PASSWORD --dbhost=$MYSQL_DB_HOST --dbprefix=wp_
wp core install --path="/var/www/html/wordpress" --allow-root --url=$DOMAIN_NAME --title="$WORDP_TITLE" --admin_user=$WORDP_ADMIN --admin_password=$WORDP_ADMIN_PD --admin_email=$WORDP_ADMIN_EMAIL
wp user create --path="/var/www/html/wordpress" --allow-root $WORDP_USER $WORDP_USER_EMAIL --user_pass=$WORDP_USER_PD
chown www-data:www-data /var/www/html/wordpress/wp-content/uploads -R
mkdir -p /run/php/
php-fpm7.3 -F 