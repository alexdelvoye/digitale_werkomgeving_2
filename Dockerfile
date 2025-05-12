FROM ubuntu:24.04

RUN apt update

ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y apache2

COPY html /var/www/html

WORKDIR /var/www/html

RUN date >buildtime.txt

EXPOSE 80/tcp

CMD service apache2 start && bash
