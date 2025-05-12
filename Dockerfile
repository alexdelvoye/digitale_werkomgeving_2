FROM ubuntu:20.04

RUN apt update

RUN apt install -y apache2
RUN apt install -y php

COPY html /var/www/html

WORKDIR /var/www/html

EXPOSE 81/tcp

CMD service apache2 start && bash
