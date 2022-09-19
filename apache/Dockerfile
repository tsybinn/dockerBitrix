FROM php:7.4-apache
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        msmtp \
        nano\
       sendmail\
        gettext \
        wget \
        mc  \
        screen && \
        rm -r /var/lib/apt/lists/*
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
RUN docker-php-ext-install sockets
RUN docker-php-ext-install mysqli && \
 docker-php-ext-install pdo_mysql
RUN a2enmod rewrite

 # Install APCu and APC backward compatibility
 RUN pecl install apcu \
     && pecl install apcu_bc-1.0.3 \
     && docker-php-ext-enable apcu --ini-name 10-docker-php-ext-apcu.ini \
     && docker-php-ext-enable apc --ini-name 20-docker-php-ext-apc.ini
RUN usermod -u 1000 www-data
RUN pecl install xdebug-3.0.1 \
    && docker-php-ext-enable xdebug

COPY php.ini 	/usr/local/etc/php/
ADD fake_sendmail.sh /usr/bin/fake_sendmail.sh
COPY start.sh /usr/local/sbin/start.sh
CMD  ["/usr/local/sbin/start.sh"]