provider "aws" {
  region               = "us-east-1"
}

terraform {
  backend "s3" {
    bucket             = "terraform-my-first-bucket"
    key                = "roboshop/terraform.statefile"
    region             = "us-east-1"
    dynamodb_table     = "my-dynamodb-table-terraform"
  }
}