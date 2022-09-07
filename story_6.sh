#!/bin/bash


sudo -S apt-get update -y
sudo -S apt-get install -y httpd.x86_64
sudo -S systemctl start httpd.service
sudo -S systemctl enable httpd.service
jenkins ALL= NOPASSWD: ALL
#echo "hello world from $(hostname -f)">/var/www/html/index.html
