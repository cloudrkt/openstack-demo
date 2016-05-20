#!/usr/bin/env bash
# Deletes docker machine
# Version: 0.1
# Author / Rosco Nap
# Tested on: OSX 10.11.5

if [ "$#" -eq  "0" ]
   then
     echo "Usage $0 <nodename>"
else

docker-machine rm $1 --force
openstack keypair delete "dm-$1-pubkey"
rm ~/.ssh/dm-$1_rsa.pub
rm ~/.ssh/dm-$1_rsa
fi
