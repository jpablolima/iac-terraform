resource "aws_security_group" "ssh" {
    name = "allow_ssh"
    description =  "Allow ssh"


    ingress = [ 
        { 
            description = var.description
            from_port = var.from_port
            to_port = var.to_port
            protocol = var.protocol
            cidr_blocks = var.cidr_blocks
            ipv6_cidr_blocks = var.ipv6_cidr_blocks
            self = var.self
            prefix_list_ids = var.prefix_list_ids
            security_groups = var.security_groups
        }
    ]
   
    tags = {
      "Name" = "allow_ssh"
    }
}
