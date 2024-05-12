output "ami_id" {
    value = data.aws_ami.ami_id # data.aws_ami.ami_id.id to get only ID
}

output "vpc_info" {
    value = data.aws_vpc.default
}