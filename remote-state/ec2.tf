resource "aws_instance" "DB" {
    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-018a7f01c6abc8b7d"]
    instance_type = "t2.micro"
    tags = {
        Name = "DB"
        createdby = "shravan kumar"
    }
}    
