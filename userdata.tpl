#!/bin/bash
sudo apt-get update -y &&
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key --keyring /etc/apt/trusted.gpg.d/docker-apt-key.gpg add &&
debrep="deb [arch=$(dpkg --print-architecture)] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
echo $debrep
sudo add-apt-repository -y $debrep &&
sudo apt-get update -y &&
sudo apt install docker.io docker-compose docker-clean containerd runc -y &&
sudo usermod -aG docker ubuntu