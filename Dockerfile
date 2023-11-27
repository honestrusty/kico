FROM ubuntu:20.04
RUN apt update
RUN apt install nginx -y
EXPOSE 80
systemctl start nginx
CMD ["sh","-c","/usr/sbin/nginx -g 'daemon off;'"]
