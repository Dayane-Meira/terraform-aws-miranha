resource "aws_route_table_association" "ra_public_projeto" {
    subnet_id = aws_subnet.public_subnet_projeto.id
    route_table_id = aws_route_table.router_projeto.id
}