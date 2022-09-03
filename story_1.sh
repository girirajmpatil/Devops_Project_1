#!/bin/bash

# Determine OS platform

os=`cat /etc/os-release | awk 'NR==1{print $1}'`

echo "$os"

# If ubuntu, 
# If centos,

if [ $os == ubuntu ];

then
      sudo apt-get update
      sudo apt-get install git
      sudo apt-get install docker.io
      sudo apt-get install openjdk-11-jre
      sudo apt-get install python3-pip
      sudo apt-get install net-tools
      sudo apt-get install util-linux


else
      sudo yum update
      sudo yum install git
      sudo yum install docker.io
      sudo yum openjdk-11-jre
      sudo yum python3-pip
      sudo yum net-tools
      sudo yum install util-linux
