#! bin/bash

#WordPress Install
cd /var/www/html/
curl -O https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz