output "instance_type" {
    description = "Instance Type"
    value = var.instance_type
}

output "instance_ami" {
    description = "Ami"
    value = aws_instance.web.*.ami
}

output "instance_host_id" {
    description = "Host ID"
    value = aws_instance.web.*.host_id
}

output "instance_state" {
    description = "Host State"
    value = aws_instance.web.*.instance_state
}

output "region" {
    description = "Region"
    value = var.region
}

output "ec2_public_ip" {
    description = "Ec2 public IP"
    value = aws_instance.web.*.public_ip
}

output "name_instance" {
    description = "Name Instance"
    value = var.name
}
output "keyssh" {
    description = "SSH"
    value = var.key_name
  
}



output "servers" {
   value = var.servers
}