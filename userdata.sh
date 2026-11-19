#!/bin/bash

yum update -y
yum install -y httpd

systemctl enable httpd
systemctl start httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<title>Harish Terraform Project</title>
</head>
<body>
<h1>Harish EC2 Web Server</h1>
<p>Deployed using Terraform in ap-south-1 region.</p>
<p>Infrastructure as Code using Terraform.</p>
</body>
</html>
EOF
