provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc-01" {
  cidr_block = "192.168.0.0/16"
}
