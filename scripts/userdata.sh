#!/bin/bash


echo onetwothree > /tmp/onetwothree
yum -y install nginx

cat << EOF > /usr/share/nginx/html/version.txt
1.0.6
EOF

chkconfig nginx on
service nginx start
