data "aws_ami" "ubuntu" {
  most_recent = true 

  filter  {
    name = "name"
    values = [  "ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*" ]
  }

  filter {
    name = "virtualization-type"
    values = [ "hvm"  ]
  }
    owners = [  "099720109477" ]
  
  
}

resource "aws_instance" "web_server" {
    ami = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids =  var.security_group_id
    
 
  tags = {
    Name = var.instance_name
  }
}

output "public_ip" {
    value = aws_instance.web_server.public_ip
  
}
