# resource <resource type> <resource name>
resource "aws_instance" "DB" {
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_type
    # left side things are called as arguments and right side are values
    tags = var.tags
    # key = value
}    

resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

# this is called as block
    ingress {
        from_port        = var.ssh_port
        to_port          = var.ssh_port
        protocol         = var.protocol #internet works on tcp protocol
        cidr_blocks      = var.cidr_blocks
        
    }
    egress {
        from_port        = 0 # 0 to 0 means opening all ports
        to_port          = 0
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = var.cidr_blocks
        
    }

    tags = {
        Name = "allow_ssh"
        createdby = "shravan kumar"
    }
}

