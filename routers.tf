resource "aws_route_table" "router_projeto" {
    vpc_id = aws_vpc.vpc_projeto.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw_projeto.id
    }
    tags = {
        Name = "router_projeto"
    }
}