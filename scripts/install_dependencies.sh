#!/bin/bash

# Navigate to the project directory
cd /home/ec2-user/cyf-hotel-backend

# Install Node.js and npm
curl -sL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo yum install -y nodejs

# Verify the Node.js version
node -v

# Install project dependencies
npm install
