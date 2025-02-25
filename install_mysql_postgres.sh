#!/bin/bash

# Update package lists
echo "Updating package lists..."
sudo apt update -y

# Install MySQL Server
echo "Installing MySQL Server..."
sudo apt install mysql-server -y

# Enable and start MySQL service
echo "Enabling and starting MySQL service..."
sudo systemctl enable mysql
sudo systemctl start mysql

# Install PostgreSQL
echo "Installing PostgreSQL..."
sudo apt install postgresql postgresql-contrib -y

# Enable and start PostgreSQL service
echo "Enabling and starting PostgreSQL service..."
sudo systemctl enable postgresql
sudo systemctl start postgresql

# Display status
echo "Checking MySQL status..."
sudo systemctl status mysql --no-pager

echo "Checking PostgreSQL status..."
sudo systemctl status postgresql --no-pager

echo "MySQL and PostgreSQL have been successfully installed and enabled!"
