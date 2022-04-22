resource "aws_vpc" "Lab_VPC"{
  cidr_block = var.cidr_block
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    "Name" = "VPC"
  }
}

resource "aws_route_table" "Private_Route_Table"{
  vpc_id = aws_vpc.default.id
  route {
    cidr_block = ""
  }
}

resource "aws_security_group" "Web_Security_Route"{
  name = "Web Security Group"
  vpc_id = aws_vpc.Lab_VPC.id
  description = "Enable HTTP access"
}

resource "aws_security_group_rule" "inbound_rule"{

  from_port         = 0
  protocol          = "tcp"
  security_group_id = aws_security_group.Web_Security_Route.id
  to_port           = 0
  type              = "ingress"
}

resource "aws_ec2" "Web_Server"{
 ami = "ami-0d5eff06f840b45e9"
 instance_type = var.instance_type

}