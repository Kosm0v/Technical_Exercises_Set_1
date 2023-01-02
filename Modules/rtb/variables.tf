variable "vpc_id" {
    type = string
    default = ""
    description = "vpc to which route table will be connected"
}

variable "routes" {
    type = list
    default = []
    description = "route entries"
}