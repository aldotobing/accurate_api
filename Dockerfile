# Use Alpine-based PHP image for reduced size
FROM php:7.4-fpm-alpine

# Set working directory
WORKDIR /var/www/html

# Install required system dependencies
RUN apk --no-cache add openssl

# Copy and set PHP configuration
COPY php.ini $PHP_INI_DIR/php.ini

# Add additional configurations to php.ini
RUN echo "extension=openssl" >> $PHP_INI_DIR/php.ini && \
    echo "allow_url_include = On" >> $PHP_INI_DIR/php.ini

# Copy the application code to the container
COPY . .
