variable "instances" {
  default = {
    frontend = "t3.micro"
    backend  = "t3.small"
    database = "m7i-flex.large"
  }
}

resource "aws_instance" "instance_type" {
  for_each      = var.instances
  ami           = "ami-0a7b62e89464a2d97"
  instance_type = each.value
  key_name      = "my.keypair"
  tags = {
    Name = each.key
  }
}
