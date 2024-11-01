# terraform.tfvars

# AWS region for the project
aws_region = "us-east-1"

# AWS profile to use (as configured in AWS CLI)
aws_profile = "default"

# CIDR block for the VPC
vpc_cidr_block = "10.0.0.0/16"

# Availability zones to use for subnet distribution
availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

# CIDR blocks for public subnets
public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

# CIDR blocks for private subnets
private_subnet_cidr_blocks = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]

# Tags to be applied to all resources
tags = {
  Client  = "gmedeiros"
  Project = "labs"
}

# Project name for naming conventions
project_name = "labs"
