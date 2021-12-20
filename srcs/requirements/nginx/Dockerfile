FROM debian:buster

RUN apt-get -y update
RUN apt-get -y install nginx
RUN apt-get install openssl

COPY conf/default ./

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/sbaranes.crt -keyout /etc/ssl/sbaranes.key -subj "/C=FR/ST=Lyon/L=Lyon/O=42School/OU=sbaranes/CN=sbaranes"

RUN cp ./default etc/nginx/sites-available
RUN chown -R www-data /var/www/*
RUN chmod -R 755 /var/www/*

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 443
