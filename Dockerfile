FROM jenkins:latest
MAINTAINER Brayan Caldera <ing.brayan.cm@gmail.com>

RUN mkdir ~/bin
RUN cd ~/bin
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar composer
