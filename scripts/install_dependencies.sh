#!/bin/bash

# Change to ec2-user
sudo -u ec2-user -i << 'EOF'
cd /home/ec2-user/cyf-hotel-backend

# Install Node.js and npm
curl -sL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo yum install -y nodejs

# Install project dependencies
npm install

# Set environment variables
echo "RDS_USERNAME=your_rds_username" >> ~/.bashrc
echo "RDS_PASSWORD=your_rds_password" >> ~/.bashrc
echo "RDS_HOST=your_rds_endpoint" >> ~/.bashrc
echo "RDS_DATABASE=your_database_name" >> ~/.bashrc
source ~/.bashrc
EOF
