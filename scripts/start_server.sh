#!/bin/bash

# Change to project directory
cd /home/ec2-user/cyf-hotel-backend

# Start the server
npm start > server.log 2>&1 &
