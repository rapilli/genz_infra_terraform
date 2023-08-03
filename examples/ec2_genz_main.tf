provider "aws" {
  region = "us-east-2"  # Replace with your desired AWS region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "MG_silvijay"
  }
}
