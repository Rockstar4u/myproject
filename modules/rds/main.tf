resource "aws_db_instance" "this" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  instance_class       = var.instance_class
  identifier           = "${var.project}-db"
  username             = var.username
  password             = var.password 
  parameter_group_name    = var.parameter_group_name
  db_subnet_group_name    = var.db_subnet_group_name
  vpc_security_group_ids = var.vpc_security_group_id
  skip_final_snapshot  = true

  tags = {
    Name        = "${var.project}_rds"
    Environment = var.environment
    Project     = var.project
  }
}
