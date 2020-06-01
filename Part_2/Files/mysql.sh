#! /bin/bash
sudo apt-get update
sudo apt-get install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb