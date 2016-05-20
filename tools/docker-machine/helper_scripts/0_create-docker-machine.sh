#!/usr/bin/env bash
# Creates an ssh-key for docker machine to use and will upload this using
# the openstackclient tool. Next it will start a docker machine on the remote server.
# Version: 0.1
# Author / Rosco Nap
# Tested on: OSX 10.11.5
# Bugs:
# Please use separete key because of bug: https://github.com/docker/machine/issues/3261

if [ "$#" -eq  "0" ]
   then
     echo "Usage $0 <nodename>"
else

ssh-keygen -b 2048 -t rsa -f ~/.ssh/dm-$1_rsa -q -N ""
openstack keypair create dm-$1-pubkey --public-key ~/.ssh/dm-$1_rsa.pub



 docker-machine create --driver openstack\
  --openstack-ssh-user root\
  --openstack-image-name "Ubuntu 16.04"\
  --openstack-flavor-name "Standard 2"\
  --openstack-net-name "net-public"\
  --openstack-sec-groups "default,built-in-allow-all"\
  --openstack-keypair-name "dm-$1-pubkey"\
  --openstack-private-key-file "$HOME/.ssh/dm-$1_rsa"\
  $1
fi
