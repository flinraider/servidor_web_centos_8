#!/usr/bin/env bash

# install mlocate yum-utils vim and bash completion
# install apache-2 mysql-server-8.0.26 and php-7.4 

sudo yum update -y

# developement 
#sudo yum install curl wget vim yum-utils mlocate bash-completion

sudo yum install httpd mysql-server -y

sudo yum module list php

sudo module enable php:7.4 -y

sudo yum install -y php php-pdo php-pecl-zip php-json php-common php-fpm php-mbstring php-cli php-mysqlnd php-gd  php-xml php-intl unzip  

sudo systemctl enable httpd
sudo systemctl enable mysqld
sudo systemctl start httpd
sudo systemctl start mysqld

sudo mysql_secure_installation



