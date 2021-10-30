resource "aws_instance" "sample" {
  ami                 = "ami-0e4e4b2f188e91845"
  instance_type       = "t2.micro"
  tags                = {
    name              = "sample-1"
  }
}

terraform {
  backend "s3" {
    bucket             = "terraform-my-first-bucket"
    key                = "sample/terraform.statefile"
    region             = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}