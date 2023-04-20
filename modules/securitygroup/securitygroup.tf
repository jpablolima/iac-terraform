resource "aws_security_group" "security_group" {
  name = var.name
  description = var.description

  ingress =   [
    
    {
      description = "Allow inbound traffic"
      from_port   =  var.from_port
      to_port     = var.to_port
      protocol    = var.protocol
      cidr_blocks = var.cidr_blocks
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ]

  tags = var.tags
  
}

















# ---- ###################### -----------------
# resource "aws_security_group" "ssh" {
#   name = "port-ssh"
#   description = "Port SSH"

#   ingress =   [
#     {
#       description = "Allow SSH access"
#       from_port = 22
#       to_port = 22
#       protocol = "tcp"
#       cidr_blocks = [ "0.0.0.0/0" ]
#       ipv6_cidr_blocks = []
#       prefix_list_ids = []
#       security_groups = []
#       self = false
#       security_groups = var.security_group_id
#     }
#   ] 
#   tags = {
#     Name = var.name
#   }
# }
