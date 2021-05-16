wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm -rf latest.tar.gz
cp wp-config.php wordpress/wp-config.php
cp -a wordpress/. /var/www/wordpress/

wget https://files.phpmyadmin.net/phpMyAdmin/4.9.1/phpMyAdmin-4.9.1-english.tar.gz
tar -xvzf phpMyAdmin-4.9.1-english.tar.gz
rm -rf phpMyAdmin-4.9.1-english.tar.gz
mv phpMyAdmin-4.9.1-english phpMyAdmin
cp config.inc.php phpMyAdmin/config.inc.php
cp -R phpMyAdmin /var/www/html/phpMyAdmin

cp nginx.conf /etc/nginx/sites-available/localhost
rm /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

chown -R www-data:www-data /var/www/wordpress
find /var/www/wordpress/ -type d -exec chmod 750 {} \;
find /var/www/wordpress/ -type f -exec chmod 640 {} \;
