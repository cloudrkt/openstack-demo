#!/usr/bin/env bash
# Point your docker environment to remote docker machine
# Version: 0.1
# Author / Rosco Nap
# Tested on: OSX 10.11.5

if [ "$#" -eq  "0" ]
   then
     echo "Usage $0 <nodename>"
else

eval $(docker-machine env $1)
docker-machine upgrade $1

fi
