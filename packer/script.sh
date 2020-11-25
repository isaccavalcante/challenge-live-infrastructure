


sudo rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

'''
[logstash-7.x]
name=Elastic repository for 7.x packages
baseurl=https://artifacts.elastic.co/packages/7.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
'''

sudo yum install -y logstash
sudo yum install -y httpd


/usr/share/logstash/bin/logstash-plugin install logstash-output-amazon_es


