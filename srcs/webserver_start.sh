sh ./webserver_init.sh

service nginx start
sh ./mysql_init.sh
service php7.3-fpm start
bash
