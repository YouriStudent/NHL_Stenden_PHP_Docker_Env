FROM php:8.1-fpm-alpine

# Install PDO and MYSQLI extentions into php
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install mysqli

# Nicer errors
RUN apk add --no-cache $PHPIZE_DEPS
RUN apk add --update linux-headers
RUN pecl install xdebug && docker-php-ext-enable xdebug

EXPOSE 9000