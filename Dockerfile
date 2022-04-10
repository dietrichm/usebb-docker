FROM php:5.6-apache
RUN docker-php-ext-install mysqli
RUN apt-get update && apt-get install -y ssmtp
RUN echo "Mailhub=mailhog:1025" > /etc/ssmtp/ssmtp.conf
RUN echo "sendmail_path=/usr/sbin/ssmtp -t" > "$PHP_INI_DIR/php.ini"
