variable "aws_region" {
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "key_name" {
    type = string
    default = "awskey"
}

variable "image" {
    description = "Images Ubuntu Focal-20.04-amd64-server"
    default = "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
    type = string
}
variable "aws_profile" {
    type = bool
    description = ""
    default = "terraform"
  
}
