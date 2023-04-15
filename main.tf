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
  region = var.image
  name = "teste"
  image = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
  key_name =  "awskey"
  instance_type = "t2.micro"
  owners =  "099720109477"
  servers = 2

}