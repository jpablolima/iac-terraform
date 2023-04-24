variable "name" {
    type = string
    default = "web"
}

variable "description" {
    type = string
    default = "Security group for web servers"
}

variable "ingress_port" {
    type = list(number)
   
}

variable "ingress_protocol" {
    type = string
    default = "tcp"
}

variable "ingress_cidr_blocks" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}