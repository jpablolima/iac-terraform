data "aws_ami" "ubuntu" {
    most_recent = true

    filter{
        name = "name"
        values = [ var.image ]
    }

    filter {
      name = "virtualization-type"
      values = [  "hvm" ]
  }

  owners = [ var.owners ]

}

resource "aws_instance" "web" {
    count         = var.servers
    ami           = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
    key_name      = var.key_name
  
   
    tags = {
      "Name" = var.name
      "Environment" = "production"
      "Project": "My project"
      "Owner" = "João Pablo"
    }
    # vpc_security_group_ids = [ module.security_group.aws_security_group.ssh.id  ]
}
