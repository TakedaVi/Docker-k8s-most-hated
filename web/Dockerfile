FROM php:7.4-apache
WORKDIR /var/www/html
COPY . .
RUN docker-php-ext-install pdo pdo_mysql mysqli
EXPOSE 80
