FROM php:7.4-apache
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
      #  ssmtp \
        gettext \
        screen && \
        rm -r /var/lib/apt/lists/*

RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
RUN docker-php-ext-install sockets

RUN docker-php-ext-install mysqli && \
 docker-php-ext-install pdo_mysql

 # Install APCu and APC backward compatibility
 RUN pecl install apcu \
     && pecl install apcu_bc-1.0.3 \
     && docker-php-ext-enable apcu --ini-name 10-docker-php-ext-apcu.ini \
     && docker-php-ext-enable apc --ini-name 20-docker-php-ext-apc.ini

RUN usermod -u 1000 www-data

RUN chown -R www-data:www-data /var/www/html
COPY php.ini 	/usr/local/etc/php/
#COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
