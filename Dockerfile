FROM php:8.0-apache

# Instalar extensiones necesarias
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copiar archivos al contenedor
COPY . /var/www/html/

# Ajustar permisos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Activar mod_rewrite y .htaccess
RUN a2enmod rewrite

EXPOSE 80

