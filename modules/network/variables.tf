# modules/network/variables.tf

# CIDR block for the VPC
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Project name (used for tagging and naming)
variable "project_name" {
  description = "Project name to include in resource names and tags"
  type        = string
  default     = "labs"
}

# Availability zones
variable "availability_zones" {
  description = "List of availability zones to distribute subnets across"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

# Public and private subnet CIDR blocks (optional override)
variable "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

# Tags for resources
variable "tags" {
  description = "Map of tags to assign to resources"
  type        = map(string)
  default = {
    Client  = "gmedeiros"
    Project = "labs"
  }
}
