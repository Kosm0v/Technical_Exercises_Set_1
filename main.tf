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

module "security_groups" {
    source = "./Modules/sg"
    for_each = var.security_groups
    vpc_id = module.aws_vpc["Main"].vpc_id
    sg_name = each.key
    ingress_rules = each.value.ingress_rules 
    egress_rules = each.value.egress_rules
}

module "ec2_instances" {
  source = "./Modules/ec2"
  for_each = var.ec2_instances
  ami_id = each.value.ami_id
  instance_type = each.value.instance_type
  security_groups = [module.security_groups["allow_all"].sg_id]
}

module "internet_gateway" {
    source = "./Modules/igw"
    vpc_id = module.aws_vpc["Main"].vpc_id
}

module "routing_table" {
    source = "./Modules/rtb"
    vpc_id = module.aws_vpc["Main"].vpc_id
    # routes = local.routing_tables.public_route_table
}

## create route table as a resource
## then implement them as a module

# resource "aws_route_table" "example" {
#     vpc_id = module.aws_vpc["Main"].vpc_id
#     route {
#         cidr_block = "0.0.0.0/0"
#         gateway_id = local.igw_id
#     }
#     route {
#         cidr_block = "192.168.1.0/24"
#         gateway_id = local.igw_id
#     }
#     route {
#         cidr_block = "192.168.1.32/26"
#     }
# }
