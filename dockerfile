FROM ubuntu:latest

RUN apt -y update

ARG DEBIAN_FRONTEND=noninteractive

RUN apt -y install apache2

RUN apt install -y php

RUN echo "servername hostname" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html

COPY . .

EXPOSE 3000

CMD ["apache2ctl", "-D", "FOREGROUND"]