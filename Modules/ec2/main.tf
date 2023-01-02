resource "aws_instance" "linux" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = var.security_groups
#   vpc_id = var.vpc_id
}
# ami_id: ami-04b57051a8c8f7c8d