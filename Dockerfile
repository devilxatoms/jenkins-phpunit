FROM jenkins:latest
MAINTAINER Brayan Caldera <ing.brayan.cm@gmail.com>

RUN apk --no-cache add \
        bash \
        ca-certificates \
        git \
        curl \
        unzip \
        php7 \
        php7-xml \
        php7-exif \
        php7-zip \
        php7-xmlreader \
        php7-zlib \
        php7-opcache \
        php7-mcrypt \
        php7-openssl \
        php7-curl \
        php7-json \
        php7-dom \
        php7-phar \
        php7-mbstring \
        php7-bcmath \
        php7-pdo \
        php7-pdo_pgsql \
        php7-pdo_sqlite \
        php7-pdo_mysql \
        php7-soap \
        php7-xdebug \
        php7-pcntl \
        php7-tokenizer

RUN mkdir ~/bin
WORKDIR ~/bin
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar composer
