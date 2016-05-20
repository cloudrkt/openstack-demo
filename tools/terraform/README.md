# Use case for Terraform

This usecase will demo Terraform on openstack. Please head over to https://www.terraform.io/
and install terraform on your platform.

## Prerequisites 

Please add an ssh publickey to your openstack account, or upload with the openstackclient:

Generate key (Without passphrase, so beware):
 ssh-keygen -b 2048 -t rsa -f ~/.ssh/terraform-demo_rsa -q -N ""

Upload with the openstack cli tool (Or any preferred method):

 openstack keypair create terraform-demo-pubkey --public-key ~/.ssh/terraform-demo_rsa.pub

## Validate terraform plan

 cd tools/terraform && terraform validate openstack

## Execute plan

 terraform apply openstack

## Cleanup

  terraform destroy openstack
  openstack keypair delete terraform-demo-pubkey
  rm ~/.ssh/terraform-demo_rsa.pub
  rm ~/.ssh/terraform-demo_rsa

