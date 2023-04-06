FROM ubuntu:latest
RUN sudo apt update -y
RUN sudo apt install apache2 -y
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
