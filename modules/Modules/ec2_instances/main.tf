

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  tags = {
    Name = "web"
  }
}