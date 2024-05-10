data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["973714476881"]

    filter {
    name = "name"
    value = ["RHEL-9-DevOps-Practice"]
    }

    filter {
    name = "root-device-type"
    value = ["ebs"]
    }

    filter {
    name = "virtualization type"
    value = ["hvm"]
    }
    
}