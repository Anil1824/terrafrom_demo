variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "aws_access_key"
}

variable "aws_secret_key" {
  description = "aws_secret_key"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Name for the VPC"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
}

variable "public_subnet_name" {
  description = "Name for the public subnet"
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
}

variable "private_subnet_name" {
  description = "Name for the private subnet"
}

variable "public_subnet_az" {
  description = "Availability Zone for the public subnet"
}

variable "private_subnet_az" {
  description = "Availability Zone for the private subnet"
}

variable "nsg_name" {
  description = "Name for the Network Security Group"
}

variable "nsg_ssh_cidr_blocks" {
  description = "CIDR blocks for SSH access to NSG"
  type        = list(string)
}

variable "nsg_http_cidr_blocks" {
  description = "CIDR blocks for HTTP access to NSG"
  type        = list(string)
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
}

variable "ec2_key_name" {
  description = "SSH key pair name for the EC2 instance"
}

variable "ec2_instance_name" {
  description = "Name for the EC2 instance"
}
