resource "aws_instance" "ec2" {
    ami = "ami-0f8609c9f7ce63f42"
    instance_type = "t3.micro"
    key_name = "my.keypair"
    tags = {
        Name = "ec2-server"
        
    }
}
