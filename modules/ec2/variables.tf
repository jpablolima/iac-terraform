variable "name" {
    description = "Name instance EC2"
    type = string
  
}

variable "region" {
    description = "AWS Region"
    type = string
  
}

variable "instance_type" {
    description = "instance Type"
    type = string
  
}

variable "owners" {
    description = "Images Owners Canonical"
    type = string
  
}



variable "image" {
    description = "Images Ubuntu Focal-20.04-amd64-server "
    type = string
}

variable "key_name" {
    description = "Key"
    type = string
  
}


variable "servers" {
    
}