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
  name = "my-security-group"
  description = "My security group"
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  tags = {
    Environment = "dev"
  }
 
}

module "servers" {
  source  = "./modules/ec2"
  region = var.region
  name = var.name_instance
  image = var.image
  key_name = var.key_name
  instance_type = var.instance_type
  # security_group_id= module.security_group.security_group_id
  
  owners = var.owners
  servers = 1

}

