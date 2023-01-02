variable "ami_id" {
    type = string
    default = ""
    description = "Ami instance used to launch an instance"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Instance type"
}

# variable "vpc_id" {
#     type = string
#     default = ""
#     description = "VPC where instance should be placed"
# }

variable "security_groups" {
  type = list(string)
  default = []
  description = "List of security group ids that should be attached to the ec2"
}