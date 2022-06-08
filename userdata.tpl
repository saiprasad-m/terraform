#!/bin/bash
sudo apt-get update -y &&
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg &&
sudo chmod a+r /etc/apt/keyrings/docker.gpg && 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add . &&
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&
sudo apt-get update -y &&
sudo apt install docker.io docker-compose docker-clean containerd runc -y &&
sudo usermod -aG docker ubuntu