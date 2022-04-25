module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "4.2.0"
  # database engine
  engine = "mysql"
  engine_version = ""
  instance_class = ""
  allocated_storage = 3

  # database info
  db_name = ""
  username = ""
  port = "3306"
  identifier = "database-1"
  
  create_db_instance = true
  create_db_subnet_group = true
}