locals {
    igw_id = module.internet_gateway.igw.id

    # routing_tables = {
    #     public_route_table = [
    #         {
    #             cidr_block = "0.0.0.0/0"
    #             gateway_id = local.igw_id
    #         }
    #     ]
    # }
}