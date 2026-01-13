FROM php:8.2-apache

# Aktifkan ekstensi PHP yang umum dipakai
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy semua file project ke server Apache
COPY . /var/www/html/

# Atur permission (biar aman)
RUN chown -R www-data:www-data /var/www/html
