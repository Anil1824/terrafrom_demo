variable "aws_region" {
  description = "AWS region where resources will be created"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
}

variable "security_group_name" {
  description = "Name for the security group"
}
