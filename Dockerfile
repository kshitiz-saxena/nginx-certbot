FROM nginx:1.19.0

#install certbot
RUN apt-get -y update && \
    apt-get -y install certbot python-certbot-nginx

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

EXPOSE 80
EXPOSE 443