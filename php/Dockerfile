FROM php:8.2-rc-apache-bullseye

RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli