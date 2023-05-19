/etc/init.d/mysql start

/etc/init.d/php7.3-fpm start

cd /var/www/html/wordpress

wp core download --allow-root

wp core config --dbname='mysql' --dbuser='eradi'- --dbpass='eradisql' --dbhost='mariadb' --allow-root

wp core install --url='eradi-.42.fr' --title=DopamInception --admin_user='eradi-' --admin_password='mehdi' --admin_email='zoroz8590@gmail.com' --allow-root
/etc/init.d/mysql stop
/etc/init.d/php7.3-fpm stop
