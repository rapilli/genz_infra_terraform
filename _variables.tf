variable "aws_region" {
  description = "AWS region where RDS will be created."
  default     = "us-east-2"
}

variable "db_identifier" {
  description = "The name of the RDS instance."
  default     = "example-db"
}

variable "db_allocated_storage" {
  description = "The amount of storage to allocate in GB."
  default     = 20
}

variable "db_engine" {
  description = "The name of the database engine to be used."
  default     = "mysql"
}

variable "db_engine_version" {
  description = "The version of the database engine."
  default     = "8.0.26"
}

variable "db_instance_class" {
  description = "The compute and memory capacity of the RDS instance."
  default     = "db.t2.micro"
}

variable "db_username" {
  description = "The master username for the RDS instance."
  default     = "admin"
}

variable "db_password" {
  description = "The password for the master username."
}

variable "db_name" {
  description = "The name of the default database to be created."
  default     = "mydb"
}

variable "db_port" {
  description = "The port on which the database accepts connections."
  default     = 3306
}

variable "db_parameter_group_name" {
  description = "The name of the parameter group to associate with the RDS instance."
  default     = "default.mysql8.0"
}

variable "db_publicly_accessible" {
  description = "Whether the RDS instance should have a public IP address."
  default     = false
}

variable "db_skip_final_snapshot" {
  description = "Whether to skip the final snapshot when the RDS instance is deleted."
  default     = true
}

variable "db_security_group_id" {
  description = "The ID of the security group to associate with the RDS instance."
  default     = aws_security_group.db_sg.id
}
