resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description
    vpc_id = var.vpc_id
    ingress = var.ingress
    egress = var.egress
    tags = var.tags
}