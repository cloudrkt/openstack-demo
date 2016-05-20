# Use case for Docker machine

Please head over to https://docs.docker.com/machine/install-machine/ and install docker machine for you platform.
Also install the python-openstackclient on your system with pip.

When completed, upload your public ssh key to openstack through the CLI or interface before starting.

## Prerequisites

First generate your key (Beware, no passphrase):

 ssh-keygen -b 2048 -t rsa -f ~/.ssh/docker-machine_rsa -q -N ""

Upload with the openstack cli tool (Or any preferred method):

 openstack keypair create docker-machine-pubkey --public-key ~/.ssh/docker-machine_rsa.pub

Because of a bug (https://github.com/docker/machine/issues/3261) it will be deleted when you removed your docker machine, so be aware.

## Time create your first Openstack machine:

 docker-machine create --driver openstack\
   --openstack-ssh-user "<root>"\
   --openstack-image-name "<imagename>"\
   --openstack-flavor-name "<flavor name>"\
   --openstack-net-name "<net-public>"\
   --openstack-sec-groups "securitygroup"\
   --openstack-keypair-name "docker-machine-pubkey"\
   --openstack-private-key-file "~/.ssh/docker-machine_rsa"\
 my-docker-machine

## Setup your docker environment

 eval $(docker-machine env my-docker-machine)


## Upgrade your docker-machine if necessary  

  docker-machine upgrade my-docker-machine

## Run an example Docker file:

 docker build -t demo:v1 .
 docker run -d -p 80:80 demo:v1 /usr/sbin/apache2ctl -D FOREGROUND

Visit your docker-machine ip:80 to check if apache shows the default page.

## Cleanup when finished

 docker-machine rm my-docker-machine --force

## Helper scripts

Please check out the helper scripts to automate it with Bash. Don't forget to fill
in the correct openstack variables.



