FROM centos:latest
MAINTAINER NewstarCorporation
RUN yum -y install httpd
COPY index.html /var/www/html/
RUN sudo service httpd start
#CMD[“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
