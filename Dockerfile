FROM debian:stable

WORKDIR /var/www/html

COPY /srcs /var/www/html/

RUN apt-get --yes update

RUN apt-get --yes install \
wget \
nginx \
mariadb-server \
php7.3-fpm php7.3-common php7.3-mysql php7.3-xml php7.3-xmlrpc php7.3-curl php7.3-gd php7.3-imagick php7.3-cli php7.3-dev php7.3-imap php7.3-mbstring php7.3-opcache php7.3-soap php7.3-zip unzip

EXPOSE 80 443 3306

ENTRYPOINT ["bash", "webserver_start.sh"]
