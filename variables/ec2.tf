# resource <resource-type> <resource-name>


resource "aws_instance" "db" {
  ami = var.variable-example
  instance_type = var.Type_of_instance
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  tags = var.tags
  # left side are arguments and right side are values.
}

resource "aws_security_group" "allow_ssh" {
    name = var.sg-group
    description = var.sg_description
    
    # This is Block
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol
        cidr_blocks      = var.allowed_cidr
        
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocals
        to_port          = 0
        protocol         = "-1" # -1 all protocals
        cidr_blocks      = var.allowed_cidr
        
    }
  #   tags are map (key, value : tags is key, 'Name' and 'CreatedBy' are values)
    tags = {
        Name = "allow_ssh"
        CreatedBy = "SinduPriya"
    } 
}        