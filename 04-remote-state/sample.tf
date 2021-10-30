resource "aws_instance" "sample12" {
  ami                 = "ami-0e4e4b2f188e91845"
  instance_type       = "t2.micro"
  tags                = {
    Name              = "sample-12"
  }
}

terraform {
  backend "s3" {
    bucket             = "terraform-my-first-bucket"
    key                = "sample/terraform.statefile"
    region             = "us-east-1"
    dynamodb_table     = "my-dynamodb-table-terraform"
  }
}

provider "aws" {
  region = "us-east-1"
}