# globals/provider.tf

# Define provider configuration for AWS
provider "aws" {
  region  = var.aws_region  # Use the aws_region variable to set the region
  profile = var.aws_profile # Optional: Use a specific AWS profile from local credentials
}

# Define default region and profile variables
variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1" # Set a default region; override as needed per environment
}

variable "aws_profile" {
  description = "AWS CLI profile to use for credentials"
  type        = string
  default     = "labs" # Set a default profile; override if necessary
}
