# globals/variables.tf

# AWS region to deploy resources
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# AWS profile for authentication
variable "aws_profile" {
  description = "AWS CLI profile to use for authentication"
  type        = string
  default     = "labs"
}

# CIDR block for the VPC
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Availability zones to use for subnet distribution
variable "availability_zones" {
  description = "List of availability zones to distribute subnets across"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# CIDR blocks for public subnets
variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

# CIDR blocks for private subnets
variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

# Tags to be applied to all resources
variable "tags" {
  description = "Map of tags to assign to resources"
  type        = map(string)
  default     = {
    Client  = "gmedeiros"
    Project = "labs"
  }
}

# Project name, used for naming conventions and tagging
variable "project_name" {
  description = "Project name to include in resource names and tags"
  type        = string
  default     = "labs"
}
