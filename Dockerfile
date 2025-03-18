FROM php:8.2-apache

# Copy all files to Apache default folder
COPY ./ /var/www/html/

# Enable mod_rewrite for CodeIgniter clean URLs
RUN a2enmod rewrite

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port
EXPOSE 80
