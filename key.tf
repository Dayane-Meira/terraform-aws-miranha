resource "aws_key_pair" "key_access_ssh" {
    key_name = "projeto"
    public_key = file("projeto.pub")
}