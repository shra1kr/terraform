# Ec2 Variables

variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "image_id" {
  type    = string # optional
  default = "ami-090252cbe067a9e58" # optional
  description = "RHEl-9 AMI ID" # Description is optional
}

variable "instance_type" {
    type = string
    default = "t3.micro" # must to give ""
}

variable "common_tags" {
     default = {
        Project = "expense"
        Environment = "DEV"
        Terraform = "true'
    }
   
}
    

# SG Variabes

variable "sg_name" {
    default = "allow_sh"
}

variable "sg_description" {
    default = "allowing port 22 "
}

variable "ssh_port" {
    default = 22 # for integers no need ""
}

variable "protocol" {
    default = "tcp"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

# r53 Variabes

variable "zone_id" {
    default = "Z0300022NU5KWUM4EAW3"
}

variable "domain_name" {
    default = "shravan.cloud"
}


