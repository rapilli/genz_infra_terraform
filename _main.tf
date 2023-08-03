provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "example" {
  identifier              = var.db_identifier
  allocated_storage       = var.db_allocated_storage
  engine                  = var.db_engine
  engine_version          = var.db_engine_version
  instance_class          = var.db_instance_class
  username                = var.db_username
  password                = var.db_password
  name                    = var.db_name
  port                    = var.db_port
  parameter_group_name    = var.db_parameter_group_name
  publicly_accessible     = var.db_publicly_accessible
  skip_final_snapshot     = var.db_skip_final_snapshot
  vpc_security_group_ids  = [var.db_security_group_id]
}

resource "aws_security_group" "db_sg" {
  name_prefix = "db-sg-"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
