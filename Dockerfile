FROM jenkins:latest
MAINTAINER Brayan Caldera <ing.brayan.cm@gmail.com>

# Jenkins is using jenkins user, we need root to install things.
USER root

# Install php packages.
RUN apt-get update
RUN apt-get -y -f install php7-cli php7-dev php7-curl curl php-pear ant

RUN mkdir ~/bin
WORKDIR ~/bin
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar composer
