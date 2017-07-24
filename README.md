# codecombat-docker
Dockerfile for installing codecombat

## Dependencies 
You need to install docker

## Usage 

1. First, build docker image 
`sudo make build`

2. Then, install (download db dump and app code and install it)
`make install`

3. That is it, now you can run (need ~1 min to start) : 
`make run`

now codecombat is available on : http://localhost:3000
