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
  ipv6_cidr_block = None
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

resource "aws_subnet" "Public_Subnet"{
  vpc_id = aws_vpc.LabVPC.id
  availability_zone = "${var.aws_region}"
}

resource "aws_subnet" "Private_Subnet" {
  vpc_id = aws_vpc.LabVPC.id
  cidr_block = "10.0.2.0/23"
}