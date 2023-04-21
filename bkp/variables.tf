variable "name_instance" {
    description = "Name Instance Ec2"
    type = string

}

variable "region" {
    description = "AWS Region"
    type = string
}


variable "instance_type" {
    description = "Instance Type"
    type = string
  
}

variable "owners" {
    description = "Image Owners Canonical"
    type = string
}

variable "image" {
    description = "Images Ubuntu Focal-20.04-amd64-server"
    type = string
}

variable "key_name" {
    description = "key"
    type = string
}

variable "security_group_name" {
  description = "security group name"
  type = string
}

