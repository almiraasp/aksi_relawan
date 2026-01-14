FROM php:8.0-apache

# Aktifkan ekstensi PHP yang umum dipakai
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Atur permission (biar aman)
RUN chown -R www-data:www-data /var/www/html
