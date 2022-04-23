module "vpc"{
 source = "terraform-aws-modules/vpc/aws"
 version = "2.66.0"
 name = "Lab_VPC"
 cidr = var.cidr_block
 azs = ["${var.aws_region}a","${var.aws_region}b"]
 private_subnets = var.private_subnets
 public_subnets = var.public_subnets
}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"
}

module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.5.0"
  # insert the 34 required variables here
}