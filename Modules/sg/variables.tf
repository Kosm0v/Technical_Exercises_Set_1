variable "sg_name" {
    type = string
    default = "security group"
    description = "security group name"
}

variable "sg_description" {
    type = string
    default = "Security Group description"
    description = "Security Group description"
}

variable "vpc_id" {
    type = string
    default = "Vpc ID"
    description = "VPC ID"
}
variable ingress_rules {
    type = list(object({
        description = string
        from_port = number
        to_port = number
        protocol = string
        cidr_blocks = list(string)
    }))
    description = "ingress_rules"
}

variable egress_rules {
    type = list(object({
        description = string
        from_port = number
        to_port = number
        protocol = string
        cidr_blocks = list(string)
    }))
    description = "egress_rules"
}

