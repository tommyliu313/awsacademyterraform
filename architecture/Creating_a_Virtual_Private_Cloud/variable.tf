#configuration
variable "aws_region"{
  type = string
  description = "Region for AWS Resources"
  default = "ap-east1"
}
variable "access_key"{
 value = ""
}
variable "secret_key" {
 value = ""
}

# virtual network
variable "instance_type" {
  type        = string
  description = "Type for EC2 Instance"
  default     = "t2.micro"
}

variable "private_subnets"{
  name = "private_subnet"
type = list(string)
default = ["10.0.2.0/24","10.0.4.0/24"]
}

variable "public_subnet"{
name = "public_subnet"
type = string

}

variable "vpc_subnet_count"{
 type = map(number)
}

#kubernetes
variable "cluster_name"{

}

