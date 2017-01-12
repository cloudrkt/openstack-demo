variable "image" {
  default = "CloudVPS Ubuntu 16.04"
}

variable "flavor" {
  default = "Standard 1"
}

variable "ssh_key_file" {
  default = "~/.ssh/id_rsa"
}

variable "ssh_user_name" {
  default = "root"
}

variable "pool" {
  default = "net-public"
}

variable "default_public_gateway_id" {
  default = "00000000-0000-0000-0000-000000000000"
}
