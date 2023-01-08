FROM ubuntu

# The Maintainer of the container
MAINTAINER DialloTech ()wourymaths93@gmail.com

# Install nginw and git
RUN apt-get update && \
    apt-get install -y nginx git

EXPOSE 80 

RUN rm -Rf /var/www/html/*



RUN git clone git@github.com:diranetafen/static-website-example.git /var/www/html/


ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"]