provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]

}

terraform {
  backend "s3" {
    bucket = "mybucket-terraform-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}


module "security_group" {

  source = "./modules/securitygroup"
  description = "security group"
  name = "security-group"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks =  [ "0.0.0.0/0" ]
  ipv6_cidr_blocks = ["::/0"]
  self             = false
  security_groups  = [""]
  prefix_list_ids  = [""]

}



module "servers" {
  source  = "./modules/ec2"
  region = var.region
  name = var.name_instance
  image = var.image
  key_name = var.key_name
  instance_type = var.instance_type
  owners = var.owners
  servers = 1
  
}

