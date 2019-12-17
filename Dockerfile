# Image
FROM debian:buster

LABEL coscialp="coscialp@student.le-101.fr"

WORKDIR /var/www/html

# Install packages
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y zsh
RUN apt-get install -y git
RUN apt-get install -y default-mysql-server
RUN apt-get install -y php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip php-fpm
RUN apt-get install -y curl

# Install Wordpress
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz && \
	rm -f latest.tar.gz

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Ports
EXPOSE 80

CMD echo "Launching nginx" && nginx -g 'daemon off;'