terraform {
  backend "s3" {
    bucket = "mybucket-terraform-tfstate"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}