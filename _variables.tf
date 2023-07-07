variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  default     = "AKIAR762QMAE26XSNYHI"
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
  default     = "d02/MovSk9IHr8/DLlUAUwYa66rYTIuTrdWJyl6I"
}

variable "ami" {
  description = "Amazon Machine Image ID"
  type        = string
  default     = "ami-0103f211a154d64a6"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}
