variable "vpc" {
    type = map(object({
        cidr_block = string
        tags = map(string)
    }))
    description = "VPC used for set_1"
}

variable "subnets" {
    type = map(object({
        cidr_block = string
    }))
    description = "Subnets used for vpc"
}

variable "security_groups" {
    type = map(map(list(object({
        description = string
        from_port = number
        to_port = number
        protocol = string
        cidr_blocks = list(string)
    }))))
}
