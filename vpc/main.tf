provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc-01" {
  cidr_block = var.vpc_cidr_block
}
