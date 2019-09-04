FROM php:7.2-fpm-alpine

RUN apk add bash zlib-dev
RUN docker-php-ext-install pdo pdo_mysql zip
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --install-dir=/usr/local/bin --filename=composer --quiet

RUN composer global require laravel/installer

ENV PATH="/root/.composer/vendor/bin:${PATH}"
ENV PATH="/var/www/vendor/bin:${PATH}"

WORKDIR /var/www
