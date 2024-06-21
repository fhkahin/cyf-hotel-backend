#!/bin/bash

# Navigate to the project directory
cd /home/ec2-user/cyf-hotel-backend

# Start the application
npm start > server.log 2>&1 &
