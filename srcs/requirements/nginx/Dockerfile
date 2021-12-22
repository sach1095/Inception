FROM debian:buster

EXPOSE 443
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
RUN apt-get install openssl -y

COPY ./tools/default ./
COPY ./tools/nginx.conf ./

RUN cp nginx.conf etc/nginx/nginx.conf
RUN cp default etc/nginx/sites-enabled/default
RUN openssl req -x509 -nodes -newkey rsa:4096 -keyout cle.key -out cert.pem -days 365 -subj "/C=FR/CN=42Lyon/O=42/CN=sbaranes" 
RUN openssl x509 -outform pem -in cert.pem -out cert.crt
RUN mv cert.crt /etc/nginx/
RUN mv cle.key /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
