variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-2"
}

variable "ec2_ami" {
  description = "EC2 AMI ID"
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_key_pair" {
  description = "EC2 Key Pair Name"
  type        = string
}
