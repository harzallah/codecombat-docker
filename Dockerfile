FROM ubuntu:14.04
MAINTAINER Hedi Harzallah <hedi.harzallah@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | sudo tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update
RUN apt-get install -y build-essential python2.7 git curl mongodb-org nodejs-legacy
RUN apt-get install -y supervisor wget 

# install nodejs v6
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get install -y nodejs

# install bower globally
RUN npm install bower -g

# add scripts and conf files
ADD init-db.sh /root/init-db.sh
ADD init-app.sh /root/init-app.sh
ADD install.sh /root/install.sh
ADD start.sh /root/start.sh
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# set startup script
CMD ["/usr/bin/supervisord"]
