resource "aws_instance" "ec2_projeto" {
  ami           = "ami-083654bd07b5da81d"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public_subnet_projeto.id
  associate_public_ip_address = true
  key_name = "${aws_key_pair.key_access_ssh.key_name}"
  security_groups = [
      aws_security_group.ssh_access_projeto.id,
      aws_security_group.http_access_projeto.id
  ]
  tags = {
    Name = "ec2_projeto"
  }
}