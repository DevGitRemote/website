FROM ubuntu:latest
RUN apt update -y
RUN apt install apache2 -y
ADD ./images ./index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
