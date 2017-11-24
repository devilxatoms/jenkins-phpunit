FROM jenkins:latest
MAINTAINER Brayan Caldera <ing.brayan.cm@gmail.com>

RUN apt-get install php7.0 php7.0-fpm php7.0-mysql -y
