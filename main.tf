resource "aws_instance" "ec2" {
  count         = "3"
  ami           = "ami-0a7b62e89464a2d97"
  instance_type = "t3.micro"
  key_name      = "my.keypair"
  tags = {
    Name = "ec2-server"
  }
}