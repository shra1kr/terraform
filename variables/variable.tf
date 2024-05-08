# preferences variables in Terraform 
# 1. command line (arguments)
# 2. .tfvars (terraform.tfvars 'or' terraform apply -var-file="testing.tfvars")
# 3. Environment variables 
# 4. default values

variable "image_id" {
  type    = string # optional
  default = "ami-090252cbe067a9e58" # optional
  description = "RHEl-9 AMI ID" # Description is optional
}

variable "instance_type" {
    type = string
    default = "t3.micro" # must to give ""
}

variable "tags" {
    default = {
        project = "expense"
        Environment = "DEV"
        Module = "DB"
        Name = "DB"
    }
}    

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