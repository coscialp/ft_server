# Image
FROM debian:buster

LABEL coscialp="coscialp@student.le-101.fr"

# Install packages
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y zsh
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y default-mysql-server
RUN apt-get install -y php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip php-fpm

# Install Wordpress
RUN cd /var/www/html/
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xvf latest.tar.gz && \
	rm -f latest.tar.gz
RUN cd ~

# Ports
EXPOSE 80:80

# Loading srcs
ADD ./srcs/start.sh /usr/bin/start.sh
RUN chmod +x /usr/bin/start.sh

CMD "start.sh"