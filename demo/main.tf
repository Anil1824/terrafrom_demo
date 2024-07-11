terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.57.0"
    }
  }
}

provider "aws" {
  region         = var.aws_region
  aws_access_key = var.aws_access_key
  aws_secret_key = var.aws_secret_key
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

# Create public subnet
resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.public_subnet_az

  tags = {
    Name = var.public_subnet_name
  }
}

# Create private subnet
resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.private_subnet_az

  tags = {
    Name = var.private_subnet_name
  }
}

# Create a security group
resource "aws_security_group" "nsg" {
  name        = var.nsg_name
  description = "Allow inbound traffic on port 22 and 80"

  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an EC2 instance
resource "aws_instance" "ec2" {
  ami             = var.ec2_ami
  instance_type   = var.ec2_instance_type
  subnet_id       = aws_subnet.public.id
  key_name        = var.ec2_key_name
  security_groups = [aws_security_group.nsg.id]

  tags = {
    Name = var.ec2_instance_name
  }
}
