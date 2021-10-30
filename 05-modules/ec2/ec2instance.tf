resource "aws_instance" "demo" {
  ami                      = "ami-0e4e4b2f188e91845"
  instance_type            = "t2.micro"
  vpc_security_group_ids   = [var.Sec_grp]
  tags                     = {
    Name                   = "demo1"
  }
}


variable Sec_grp{}