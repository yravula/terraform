variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
variable "ami_id" {
  description = "EC2 AMI ID"
  type        = string
}

provider "aws" {
  region      = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "web"
  }
}
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}