output "vpc_id" {
  value = module.aws_vpc["Main"].vpc_id
}

output "subnet_id" {
  value = module.aws_subnet["public_one"].subnet_id
}

output "security_group_id" {
  value = module.security_groups["allow_all"].sg_id
}

output "internet_gateway_id" {
  value = module.internet_gateway.igw.id
}

output "local_igw_id" {
  value = local.igw_id
}

# output "local_routing_table" {
#   value = local.routing_tables.public_route_table
# }