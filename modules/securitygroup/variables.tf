variable "name" {
    description = "Name security group"
    type = string
}

variable "description" {
    description = "Description"
    type = string
}


variable "from_port" {
    description = "From Port"
    type = number
}

variable "to_port" {
    description = "To Port"
    type = number
}

variable "protocol" {
    description = "Protocol"
    type = string
}

variable "cidr_blocks" {
  type        = list(string)
  description = "Os endereços CIDR para permitir o tráfego"
}

variable "tags" {
  type        = map(string)
  description = "As tags para o grupo de segurança"
}