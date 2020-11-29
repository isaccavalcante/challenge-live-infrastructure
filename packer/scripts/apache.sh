
#!/bin/bash

sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd.service

sudo chmod -R 755 /var/log/httpd/

sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html

echo "<h1>Pagar.me Challenge</h1>" > /var/www/html/index.html