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


# Variable of the Security group 

# variable "security_group_id" {
#   description = "The name of the security group"
# #   default = "sg-0123456789abcdef0"
#   type = string
# }
