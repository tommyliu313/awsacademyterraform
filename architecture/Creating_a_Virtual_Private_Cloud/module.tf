module "vpc"{
 source = "terraform-aws-modules/vpc/aws"
 version = "2.66.0"
 name = "Lab_VPC"
 cidr = var.cidr_block
 azs = ["${var.aws_region}a","${var.aws_region}b"]
 private_subnets = var.private_subnets
 public_subnets = var.public_subnets
}

