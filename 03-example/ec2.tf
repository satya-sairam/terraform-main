resource "aws_instance" "sample" {
  ami                      = "ami-0e4e4b2f188e91845"
  instance_type            = "t2.micro"
  tags                     = {
    Name                   = "new"
  }
}

output "public_ip"{
  value                    = aws_instance.sample.public_ip
}


resource "aws_security_group" "SG" {
  name                     = "allow_ssh"
  description              = "allow_ssh"

  ingress {
      description          = "ssh"
      from_port            = 22
      to_port              = 22
      protocol             = "tcp"
      cidr_blocks          = ["0.0.0.0/0"]
    }


  egress {
      from_port            = 0
      to_port              = 0
      protocol             = "-1"
      cidr_blocks          = ["0.0.0.0/0"]
    }

  tags                     = {
    Name                   = "allow_ssh"
  }
}


output "aws_attributes" {
  value = aws_instance.sample
}

provider "aws" {
  region  = "us-east-1"
}