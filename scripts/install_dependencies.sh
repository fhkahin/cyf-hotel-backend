#!/bin/bash

# Change to project directory
cd /home/ec2-user/cyf-hotel-backend

# Install Node.js and npm
curl -sL https://rpm.nodesource.com/setup_14.x | sudo bash -
sudo yum install -y nodejs

# Install project dependencies
npm install
