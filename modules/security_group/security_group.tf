resource "aws_security_group" "this" {
#   name_prefix = var.name_prefix
  name_prefix = var.name
  description = var.description


  ingress = [ {
    description      = var.description
    cidr_blocks      = var.ingress_cidr_blocks
    protocol         = "tcp"
    from_port        = 8080
    to_port          = 8080
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self = false
  } , 
  {
    description      = "Allow SSH "
    cidr_blocks      = var.ingress_cidr_blocks
    protocol         = "tcp"
    from_port        = 22
    to_port          = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    security_groups  = []
    self             = false
  } 
  ]

    tags = {
      Name = var.name
    }

}