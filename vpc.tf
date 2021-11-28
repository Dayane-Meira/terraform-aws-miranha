resource "aws_vpc" "vpc_projeto" {
    cidr_block = "10.0.0.0/24"
    enable_dns_hostnames = true
    tags = {
        Name = "vpc_projeto"
    }
}