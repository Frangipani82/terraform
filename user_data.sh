#!/bin/bash

#Update and install web server
sudo yum update -y
sudo yum install -y httpd

#Copy HTML file to index.html file for the web server
sudo cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Web server</title>
    <style>
        body {background-color: darkslateblue;}
        h1 {color: lemonchiffon;
            text-align: center;}
    </style>
</head>
<body>
    <h1>Website for Cloud Programming class</h1>
</body>
</html>
EOF

#Start and enable server
sudo systemctl start httpd
sudo systemctl enable httpd