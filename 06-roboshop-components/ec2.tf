resource "aws_instance" "sample" {
  count                         = length(var.COMPONENTS)
  ami                           = var.ami_id
  instance_type                 = var.instance-type
  vpc_security_group_ids        = [aws_security_group.sample_sg.id]
  tags                          = {
    Name                        = element(var.COMPONENTS,count.index )
  }
}


resource "aws_security_group" "sample_sg" {
  name                          = "sg_allow_all"
  description                   = "sg_allow_all"

  ingress {
    description                 = "allow_all"
    from_port                   = 22
    protocol                    = "tcp"
    to_port                     = 22
    cidr_blocks                 = ["0.0.0.0/0"]
  }

  egress {
    from_port                   = 0
    protocol                    = "-1"
    to_port                     = 0
    cidr_blocks                 = ["0.0.0.0/0"]
  }

  tags                          = {
    Name                        = "sample_sg"
  }
}

output "security_group_attributes" {
  value = aws_security_group.sample_sg
}

output "private_ips_of_instances" {
  value = aws_instance.sample.*.private_ip
}