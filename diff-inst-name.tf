resource "aws_instance" "different_name_instance" {
  for_each      = toset(["frontend", "backend", "database"])
  ami           = "ami-0a7b62e89464a2d97"
  instance_type = "t3.micro"
  key_name      = "my.keypair"
  tags = {
    Name = each.key
  }
}
