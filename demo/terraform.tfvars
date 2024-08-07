aws_region                = "us-east-1"
aws_access_key            = ""
aws_secret_key            = ""
vpc_cidr_block            = "10.0.0.0/16"
vpc_name                  = "my-vpc"
public_subnet_cidr_block  = "10.0.1.0/24"
public_subnet_name        = "public-subnet"
private_subnet_cidr_block = "10.0.2.0/24"
private_subnet_name       = "private-subnet"
public_subnet_az          = "us-east-1a"
private_subnet_az         = "us-east-1b"
nsg_name                  = "my-nsg"
nsg_ssh_cidr_blocks       = ["0.0.0.0/0"]  # Example CIDR block for SSH access
nsg_http_cidr_blocks      = ["0.0.0.0/0"]  # Example CIDR block for HTTP access
ec2_ami                   = "ami-12345678" # Replace with your desired AMI ID
ec2_instance_type         = "t2.micro"
ec2_key_name              = "my-keypair"
ec2_instance_name         = "my-ec2-instance"