# backend.tf

terraform {
  backend "s3" {
    bucket         = "gmedeiros-labs-terraform"       # Replace with your S3 bucket name
    key            = "labs/terraform.tfstate"         # Path to store the state file within the bucket
    region         = "us-east-1"                      # AWS region for the S3 bucket
    encrypt        = true                             # Enable server-side encryption for state file
    dynamodb_table = "gmedeiros-labs-terraform-table" # DynamoDB table for state locking (optional but recommended)
  }
}