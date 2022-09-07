#!/bin/bash

#sudo su
apt-get update -y
apt-get install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "hello world from $(hostname -f)">/var/www/html/index.html
