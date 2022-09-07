#!/bin/bash


sudo apt-get update -y
sudo apt-get install -y httpd.x86_64
sudo systemctl start httpd.service
sudo systemctl enable httpd.service
echo "hello world from $(hostname -f)">/var/www/html/index.html
