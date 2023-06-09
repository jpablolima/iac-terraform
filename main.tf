provider "aws" {
  region     = var.aws_region
  shared_config_files = [ "~/.aws/credentials" ]
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


