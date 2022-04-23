resource "aws_nat_gateway" "newgateway"{
  name = "newgateway"
  subnet_id = a
}
resource "aws_instance" "CafeWebAppServer"{
  name = "CafeWebAppServer"

}
resource "aws_instance" "Bastion_Host"{}

resource "aws_launch_template" ""{
  instance_type = var.instance_type
  security_group = ""
  tags = {
    Name = "webserver"
  }
}
resource "aws_autoscaling_group" ""{

}