FROM ubuntu
RUN apt update
ARG DEBIAN_FRONTEND=noninteractive
ADD      .      /var/www/html
RUN      apt install apache2 -y
ENTRYPOINT      apachectl -D FOREGROUND
