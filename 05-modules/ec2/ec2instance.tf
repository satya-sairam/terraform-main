resource "aws_instance" "demo" {
  count                    = 2
  ami                      = "ami-0e4e4b2f188e91845"
  instance_type            = "t2.micro"
  vpc_security_group_ids   = [var.Sec_grp]

  tags                     = {
    Name                   = "sample-${count.index}"
  }
}


variable Sec_grp{}

output "privateip" {
  value = aws_instance.demo.*.private_ip
}