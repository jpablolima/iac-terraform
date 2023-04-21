resource "aws_security_group" "this" {
  name_prefix = var.name_prefix
  description = var.description


  ingress = [ {
    description = var.description
    cidr_blocks = var.ingress_cidr_blocks
    protocol = var.ingress_protocol
    from_port = var.ingress_port
    to_port = var.ingress_port
    ipv6_cidr_blocks = []
    prefix_list_ids = []
    security_groups = []
    self = false
  } ]

}