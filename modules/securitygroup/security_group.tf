resource "aws_security_group" "ssh" {
  name = "port-ssh"
  description = "Port SSH"

  ingress = {
 
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]



    tags = {
        "Name" = var.name
    }
  } 

}
