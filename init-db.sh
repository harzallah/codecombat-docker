#!/bin/bash

cd /data/db/
wget -c http://analytics.codecombat.com:8080/dump.tar.gz
tar -xzf dump.tar.gz

/usr/bin/mongod &
echo "waiting 60s for mongod startup ..."
sleep 60

echo "restoring snapshot"
/usr/bin/mongorestore dump
echo "restore successfull"

