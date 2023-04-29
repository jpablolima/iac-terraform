provider "aws" {
  region     = var.aws_region
  profile = var.is_aws_profile_used ? var.aws_cli_profile : null
  # profile    = var.aws_profile
}


terraform {
  backend "s3" {
    bucket = "mybucket-terraform-tfstate"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}

module "security_group" {
  source = "./modules/security_group"
  name =  "web"
  description = "Security group for web servers"
  ingress_port = [  8080, 22  ]
  ingress_protocol = "tcp"
  ingress_cidr_blocks = ["0.0.0.0/0"]
}


module "ec2_instance" {
    source = "./modules/ec2"
    ami = "ami-007855ac798b5175e"
    image = var.image
    instance_type = var.instance_type
    key_name = var.key_name
    security_group_id = [module.security_group.security_group_id]
}


