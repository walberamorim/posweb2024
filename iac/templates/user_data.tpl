#!/bin/bash

set -o errexit
set -o pipefail
set -o nounset

apt update

apt -y install \
    net-tools \
    mysql-server \
    python3-pip \
    python3-venv \
    pkg-config \
    default-libmysqlclient-dev \
    nginx

 

mkdir /home/ubuntu/myapp

chown -R ubuntu:ubuntu /home/ubuntu/myapp/
chmod -R 755 /home/ubuntu/myapp/

chown -R ubuntu:ubuntu /var/www/html/
chmod -R 755 /var/www/html/


cd /home/ubuntu/myapp
python3 -m venv .
source ./bin/activate
pip install \
    flask \
    flask-mysqldb \
    flask-cors