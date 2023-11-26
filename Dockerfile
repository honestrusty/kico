FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install apache2 -y
ADD index.html /var/www/index.html
WORKDIR /var/www/index.html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
