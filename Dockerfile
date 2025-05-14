FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive


RUN apt update
RUN apt install apache2 -y

COPY html/ /var/www/html

RUN date -u >/var/www/html/buildtime.txt

EXPOSE 80/tcp
CMD ["apachectl", "-D", "FOREGROUND"]
