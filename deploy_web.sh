#!/bin/bash
echo "--- Starting Automated Bash Setup by Dewmie ---"

#1.Update  System
echo "Updating package Lists..."
sudo apt update -y

#2. Install Nginx (Check  if installed first to avoid errors)
if ! command -v nginx &> /dev/null
then
  echo "Nginx not found. Installing..."
   sudo apt install nginx -y
else 
    echo "Nginx is already installed."
fi

# 3. Setup Custom Web  Page
echo "Deploying  custom website..."
echo "<h1>Hello! This is Dewmie's Automated Server <h1>" | sudo tee /var/www/html/index.html

#4. Permissions 
sudo chown www-data:www-data /var/www/html/index.html
sudo chmod  644 /var/www/html/index.html

echo  "--- Setup Complete! Check your IP in Browser ---"
