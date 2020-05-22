FROM php:7.4-apache
RUN docker-php-ext-install pdo_mysql
RUN apt-get update
RUN apt-get install -y autoconf pkg-config libssl-dev git zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN a2enmod rewrite
#RUN curl -sS https://get.symfony.com/cli/installer | bash
#RUN export PATH="$HOME/.symfony/bin:$PATH"