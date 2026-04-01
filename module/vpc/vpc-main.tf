module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block          = "10.0.0.0/16"
  subnet_cidr_block       = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_lanuch = true

  ami_id        = "ami-0a7b62e89464a2d97"
  instance_type = "t2.micro"
  key_name      = "my-keypair"
}
