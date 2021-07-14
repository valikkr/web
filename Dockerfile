FROM ubuntu:latest
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
MAINTAINER NewstarCorporation
RUN apt-get -y update
RUN apt-get -y install apache2
COPY index.html /var/www/html/
#RUN service apache2 start
CMD /usr/sbin/apache2ctl -D FOREGROUND
#CMD[“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
