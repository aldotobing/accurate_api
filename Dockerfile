# Use Alpine-based PHP image for reduced size
FROM php:7.4-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Copy and set PHP configuration
COPY php.ini $PHP_INI_DIR/php.ini
RUN echo "allow_url_include = On" >> $PHP_INI_DIR/php.ini

# Copy the application code to the container
COPY . .
