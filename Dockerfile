FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
ADD index.html /var/www/html/index.html
EXPOSE 8088
CMD ["apachectl", "-DFOREGROUND"]
