variable "ami" {
    type = string
    default = "ami-007855ac798b5175e"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "instance_name" {
    type = string
    default = "web-server"
}

variable "image" {
    description = "Images Ubuntu Focal-20.04-amd64-server"
    type = string
  
}

variable "key_name" {
    description = "key"
    type = string
}



variable "security_group_id" {}

