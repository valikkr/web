FROM ubuntu:latest
MAINTAINER NewstarCorporation
RUN apt-get -y install apache2
COPY index.html /var/www/html/
RUN service apache2 start
#CMD[“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
