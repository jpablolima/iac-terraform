output "instance_type" {
    description = "Instance Type"
    value = var.instance_type
}

output "instance_ami" {
    description = "Ami"
    value = module.servers.instance_ami
}

output "instance_host_id" {
    description = "Host ID"
    value = module.servers.instance_host_id
}

output "instance_state" {
    description = "Host State"
    value = module.servers.instance_state
}

output "region" {
    description = "Region"
    value = var.region
}

output "ec2_public_ip" {
    description = "EC2 Public IP"
    value = module.servers.ec2_public_ip
}

output "name_instance" {
    description = "Name Instance"
    value = var.name_instance
}

output "keyssh" {
    description = "SSH"
    value = var.key_name
}



output "security_group_name" {
  description = "security group name"
  value = var.security_group_name
}