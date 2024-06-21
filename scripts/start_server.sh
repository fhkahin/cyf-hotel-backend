#!/bin/bash

# Change to ec2-user
sudo -u ec2-user -i << 'EOF'
cd /home/ec2-user/cyf-hotel-backend

# Start the application
npm start > /home/ec2-user/server.log 2>&1 &
EOF
