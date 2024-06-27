#!/bin/bash

# Function to kill process using a specific port
kill_port() {
    PORT=$1
    PID=$(sudo lsof -t -i:$PORT)
    if [ ! -z "$PID" ]; then
        sudo kill -9 $PID
    fi
}

# Kill processes using ports 80
kill_port 80

# Start Nginx with sudo
sudo /home/junzzang-com/WebServer/nginx/sbin/nginx -c /home/junzzang-com/WebServer/nginx/conf/nginx.conf
