# codecombat-docker
Dockerfile for installing codecombat

## Dependencies 
You need to install docker

## Usage 

First, build docker image 
sudo make build

Then, install (download db dump and app code and install it)
make install

That is it, now you can run (need ~1 min to start) : 
make run

now codecombat is available on : http://localhost:3000
