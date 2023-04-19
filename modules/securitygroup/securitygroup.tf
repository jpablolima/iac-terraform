resource "aws_security_group" "ssh" {
  name = "port-ssh"
  description = "Port SSH"

  ingress =   [
    {
      description = "Allow SSH access"
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      security_groups = []
      self = false
    }
  ] 
  tags = {
    Name = var.name
  }
}
