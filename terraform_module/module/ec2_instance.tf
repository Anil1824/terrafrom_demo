resource "aws_instance" "example" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  subnet_id       = module.main.public_subnet_id
  security_groups = [module.main.security_group_id]

  tags = {
    Name = "ExampleInstance"
  }
}
