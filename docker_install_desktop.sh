#!/bin/sh
sudo apt-get update

# Install dependencies
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Register docker repository (x86_64)
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs) stable"

# Install docker
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io

# Check installation
docker -v
