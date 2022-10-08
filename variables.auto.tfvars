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