# globals/outputs.tf

# Output the AWS region in use
output "aws_region" {
  description = "AWS region where resources are deployed"
  value       = var.aws_region
}

# Output the VPC CIDR block
output "vpc_cidr_block" {
  description = "CIDR block of the VPC"
  value       = var.vpc_cidr_block
}

# Output the list of availability zones
output "availability_zones" {
  description = "List of availability zones used for subnets"
  value       = var.availability_zones
}

# Output the public subnet CIDR blocks
output "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  value       = var.public_subnet_cidr_blocks
}

# Output the private subnet CIDR blocks
output "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  value       = var.private_subnet_cidr_blocks
}

# Output the tags used across resources
output "tags" {
  description = "Tags applied to resources"
  value       = var.tags
}

# Output the project name
output "project_name" {
  description = "Name of the project"
  value       = var.project_name
}
