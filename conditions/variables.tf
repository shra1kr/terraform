variable "image_id" {
  type    = string # optional
  default = "ami-090252cbe067a9e58" # optional
  description = "RHEl-9 AMI ID" # Description is optional
}

variable "instance_type" {
    type = string
    default = "t3.micro" # must to give ""
}

variable "instance_name" {
    default = "db"
}