#!/usr/bin/env bash

sudo apt-get -y update

#install docker
sudo apt-get -y install docker.io

# start servers and block
sudo docker run --name vatic_docker -d -p 80:80 -v /vagrant/data:/root/vatic/data npsvisionlab/vatic-docker /bin/bash -C /root/vatic/start_and_block.sh

# extract the frames in data/videos_in with labels in data/labels.txt
sudo docker exec vatic_docker /bin/bash -C /root/vatic/example.sh

