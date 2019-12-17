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

# Install Oh-My_Zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install MySQL
RUN service mysql start && \
	mysql -e "CREATE DATABASE wordpress_db" && \
	mysql -e "GRANT ALL ON wordpress_db.* TO 'wordpress_user'@'localhost' IDENTIFIED BY 'password'"

# Ports
EXPOSE 80

CMD service mysql restart && echo "Launching nginx" && nginx -g 'daemon off;'