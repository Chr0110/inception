FROM debian:buster
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y nginx \
	openssl
COPY /conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY /tools/certificate.crt /etc/ssl/certificate.crt
COPY /tools/private.key /etc/ssl/private.key
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]
