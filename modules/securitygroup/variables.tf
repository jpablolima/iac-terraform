variable "description" {
  description = "description"
  type = string
}
variable "name" {
    description = "Name"
    type = string
}

variable "from_port" {
  description = "From port"
  type    = number

}

variable "to_port" {
   description = "To port"
  type    = number

}

variable "protocol" {
  description = "Protocol"
  type    = string

}


variable "cidr_blocks" {
  description = "cidr"
  type    = list(string)


}

variable "ipv6_cidr_blocks" {
  description = "ipv6_cidr_blocks"
  type    = list(string)
}

variable "self" {
  description = "self"
  type    = bool
}

variable "prefix_list_ids" {
  description = "prefix_list_ids"
  type    = list(string)
}

variable "security_groups" {
  description = "security_groups"
  type    = list(string)
}


