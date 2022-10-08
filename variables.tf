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