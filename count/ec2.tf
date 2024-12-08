resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id] 
    #count = 3
    count = length(var.instance_names)
    tags = {
        Name = var.instance_names [count.index]
        createdby = "shravan kumar"
    }
}    

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp" #internet works on tcp protocol
        cidr_blocks      = ["0.0.0.0/0"]
    }
    
    egress {
        from_port        = 0 # 0 to 0 means opening all ports
        to_port          = 0
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        createdby = "shravan kumar"
    }
}
