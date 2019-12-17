#! bin/bash

#WordPress Install
echo "Install wordpress" ;
cd /var/www/html/
curl -O https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz

echo "Lunching nginx" ;
nginx -g 'daemon off;';