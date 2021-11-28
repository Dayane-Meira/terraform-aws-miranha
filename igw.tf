resource "aws_internet_gateway" "igw_projeto" {
    vpc_id = aws_vpc.vpc_projeto.id 
    tags = {
        Name = "igw_projeto"
    }
}