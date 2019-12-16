# Image
FROM debian:buster

MAINTAINER coscialp <coscialp@student.le-101.fr>

# Install packages
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y php-mysql

# Ports
EXPOSE 80:80

# Loading srcs
ADD ./srcs/start.sh /usr/bin/start.sh
RUN chmod +x /usr/bin/start.sh

CMD "start.sh"