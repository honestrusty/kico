FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
RUN service apache2 start
ADD index.html /var/www/html/index.html
WORKDIR /var/www/html/
EXPOSE 80
CMD apachectl -DFOREGROUND
