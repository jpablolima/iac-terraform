output "aws_region" {
    description = "AWS Region"
    value = var.aws_region 
}

output "security_group_id" {
    description = "Security Group"
    value = module.security_group.security_group_id
}

output "instance_public_ip" {
    description = "Public IP"
    value = module.ec2_instance.instance_public_ip
}

output "instance_name" {
    description = "Public IP"
    value = module.ec2_instance.instance_name
}

output "instance_type" {
    description = "Instance Type"
    value = module.ec2_instance.instance_type
}

output "key_name" {
    description = "Key SSh"
    value = module.ec2_instance.key_name
}

output "ami" {
    description = "Images Ubuntu Focal-20.04-amd64-server"
    value = module.ec2_instance.ami
}

output "os_version" {
    description = "Operating system version on the instance"
    value = module.ec2_instance.os_version
}

output "image" {
  description = "Image name"
  value = var.image
}



# Outputs DB

output "database_name" {
  value = module.postgresql.database_name
}
