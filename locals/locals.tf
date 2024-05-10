locals {
    ami_id = "ami-090252cbe067a9e58"
    sg_id = "sg-018a7f01c6abc8b7d" # replace your SG
    # instance_type = "t2.micro"
    # instance_type = var.instance_name == "DB" ? "t3.small" : "t3.micro"

    tags = {
        Name = "locals"
    }
}