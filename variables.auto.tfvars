vpc = {
    "Main" = {
        cidr_block = "10.0.0.0/24"
        tags = {
            Name = "Set_1"
        }
    }
}

subnets = {
  "public_one" = {
    cidr_block = "10.0.0.0/26"
  }
}

security_groups = {
  "allow_all" = {
    ingress_rules = [{
      description = "allow all"
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }]

    egress_rules = [{
      description = "allow all"
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }]
  }
}

ec2_instances = {
  "web_server" = {
    ami_id = "ami-04b57051a8c8f7c8d"
    instance_type = "t2.micro"
  }
}