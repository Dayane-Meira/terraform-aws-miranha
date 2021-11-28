resource "aws_subnet" "public_subnet_projeto" {
    vpc_id = aws_vpc.vpc_projeto.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name = "public_subnet_projeto"
    }
}