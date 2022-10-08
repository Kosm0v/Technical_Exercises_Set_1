module "aws_vpc" {
    source = "./Modules/VPC"
    for_each = var.vpc
    cidr_block = each.value.cidr_block
    tags = each.value.tags
}

module "aws_subnet" {
    source = "./Modules/Subnets"
    for_each = var.subnets
    vpc_id = module.aws_vpc["Main"].vpc_id
    cidr_block = each.value.cidr_block
}