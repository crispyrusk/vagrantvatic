Vagrant config for setting up vatic annotation tool:
http://web.mit.edu/vondrick/vatic/

Internally uses docker image from https://github.com/NPSVisionLab/vatic-docker

Followed the instructions from 
https://github.com/NPSVisionLab/vatic-docker

The /vagrant/data folder is mapped to /root/vatic/data

There relevant data folder is the data/ folder of the repo.
The labels should be populated in data/labels.txt, and the videos should be placed in data/videos_in

When the vagrant box provisions, it runs the docker container in detached mode, by starting a long-running apache server: runs https://github.com/NPSVisionLab/vatic-docker/blob/master/scripts/start_and_block.sh script

It also runs the extraction script for the videos in data/videos_in: runs https://github.com/NPSVisionLab/vatic-docker/blob/master/scripts/example.sh
