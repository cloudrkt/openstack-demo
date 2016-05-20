#!/usr/bin/env bash
# Creates a simple test container on remote docker machine
# Version: 0.1
# Author / Rosco Nap
# Tested on: OSX 10.11.5

docker build -t demo:v1 ../.
docker run -d -p 80:80 demo:v1 /usr/sbin/apache2ctl -D FOREGROUND
