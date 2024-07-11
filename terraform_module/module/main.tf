provider "aws" {
  region = var.aws_region
}

# Create VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

# Create internet gateway for VPC
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}

# Create a public subnet
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.aws_region "a"
  map_public_ip_on_launch = true
}

# Create a private subnet
resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.aws_region "b"
}

# Create a security group
resource "aws_security_group" "main" {
  name        = var.security_group_name
  description = "Allow inbound traffic"

  vpc_id = aws_vpc.main.id

  # Allow SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
