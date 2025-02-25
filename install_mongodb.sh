#!/bin/bash

# Update package lists
sudo apt update

# Install required dependencies
sudo apt install -y libcurl4 openssl liblzma5

# Make sure these 3 packages are in the same directory in which you are running this script

# Install MongoDB Compass
sudo dpkg -i mongodb-compass_1.45.3_amd64.deb || sudo apt-get -f install -y

# Install MongoDB Shell
sudo dpkg -i mongodb-mongosh_2.4.0_amd64.deb || sudo apt-get -f install -y

# Install MongoDB Server
sudo dpkg -i mongodb-org-server_8.0.5_amd64.deb || sudo apt-get -f install -y

# Enable and start MongoDB service
sudo systemctl enable mongod
sudo systemctl start mongod

# Check MongoDB service status
sudo systemctl status mongod --no-pager

# Print installation success message
echo "MongoDB Compass, MongoDB Shell, and MongoDB Server installed and running successfully!"
