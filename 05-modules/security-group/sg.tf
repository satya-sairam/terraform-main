resource "aws_security_group" "new_sg" {
  name                       = "allow_everyone"
  description                = "allow_every"


  ingress {
    description              = "allow__ssh"
    from_port                = 22
    protocol                 = "tcp"
    to_port                  = 22
    cidr_blocks              = ["0.0.0.0/0"]
  }

  egress {
    from_port                = 0
    protocol                 = "-1"
    to_port                  = 0
    cidr_blocks              = ["0.0.0.0/0"]
  }

  tags                       = {
    Name                     = "new_security_group"
  }
}


output "sg_id" {
  value = aws_security_group.new_sg.id
}