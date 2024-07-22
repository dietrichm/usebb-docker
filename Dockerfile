FROM php:5.6-apache
RUN docker-php-ext-install mysqli
RUN echo "deb http://archive.debian.org/debian/ stretch main" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y ssmtp
RUN echo "Mailhub=mailpit:1025" > /etc/ssmtp/ssmtp.conf
RUN echo "FromLineOverride=yes" >> /etc/ssmtp/ssmtp.conf
RUN echo "sendmail_path=/usr/sbin/ssmtp -t" > "$PHP_INI_DIR/php.ini"
