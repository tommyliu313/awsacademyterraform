resource "aws_instance_gateway" "Lab_IGW"{
  vpc_id = aws_vpc.vpc_id
  tags = {
    Name = "Lab_IGW"
  }
}
resource "aws_route_table" "Public_Route_Table" {
  vpc_id = aws_vpc

  route {
    cidr_block = "10.0.2.0/24"
  }

  route {
    cidr_block = "10.0.2.0/23"
  }

  tags = {
    Name = "example"
  }
}
resource "aws_security_group""App-SG"{
  name = "App-SG"
  description = "Allow HTTP Traffic"
  vpc_id = aws_vpc.
}
resource "aws_vpc" "LabVPC"{
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "LabVPC"
  }
}
resource "aws_vpc" "SharedVPC"{
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "LabVPC"
  }
}