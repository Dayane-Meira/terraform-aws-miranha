resource "aws_security_group" "ssh_access_projeto" {
  name = "ssh_access_projeto"
  vpc_id = aws_vpc.vpc_projeto.id
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  tags = {
    Name = "ssh_access_projeto"
  }
}

resource "aws_security_group" "http_access_projeto" {
  name = "http_access_projeto"
  vpc_id = aws_vpc.vpc_projeto.id
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
  tags = {
    Name = "http_access_projeto"
  }
}