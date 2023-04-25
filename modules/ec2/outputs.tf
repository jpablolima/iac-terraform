output "instance_public_ip" {
    description = "Public IP"
    value = aws_instance.web_server.public_ip
}

output "instance_name" {
    description = "Instance Name"
    value = var.instance_name
}

output "instance_type" {
    description = "Instance Type"
    value = "t2.micro"
  
}

output "key_name" {
    description = "Instance Type"
    value = "awskey"
}

output "ami" {
    description = "Images Ubuntu Focal-20.04-amd64-server"
    value = aws_instance.web_server.ami
  
}

output "os_version" {
    description = "Operating system version on the instance"
    value = split("-", aws_instance.web_server.ami)[1]
  
}
