# Configure the OpenStack Provider
provider "openstack" {
}

resource "terraform-node-demo-basic" {
  name = "Terraform-node"
  image_id = "ff98ab00-5de9-41fd-93f1-4438fdac2163"
  flavor_id = "111"
  key_pair = "terraform-demo-pubkey"
  security_groups = ["default", "built-in-allow-all"]

  metadata {
    tool = "terraformed"
  }

  network {
    name = "net-public"
  }
}
