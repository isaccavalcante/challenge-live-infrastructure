#!/bin/bash

sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

sudo bash -c 'cat << EOF > /etc/yum.repos.d/logstash.repo
[logstash-7.x]
name=Elastic repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
EOF'

sudo yum install -y logstash

sudo chown ec2-user:ec2-user /etc/logstash/conf.d/

sudo /usr/share/logstash/bin/logstash-plugin install logstash-output-amazon_es

sudo systemctl enable logstash
sudo systemctl start logstash