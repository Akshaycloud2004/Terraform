module "ec2" {
  source = "./modules/ec2"

  ami_id        = "ami-0a7b62e89464a2d97"
  instance_type = "t2.micro"
  key_name      = "my-keypair"
}
