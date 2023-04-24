resource "aws_instance" "web_server" {
    ami = var.ami
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
