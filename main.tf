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



module "servers" {
  source  = "./modules/ec2"
  # region = "us-east-1"
  region = var.region
  name = var.name_instance
  image = var.image
  key_name = var.key_name
  instance_type = var.instance_type
  owners = var.owners
  servers = 1

}

