variable "cidr_block" {
    type = string
    default = ""
    description = "Cidr block for vpc"
}

variable "tags" {
    type = map(string)
    default = {}
    description = "Tags to distinguish"
}