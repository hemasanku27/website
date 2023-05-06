FROM ubuntu
RUN apt update
RUN apt install -y vim nano
RUN apt install -y apache2
COPY . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
