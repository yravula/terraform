provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc-01" {
  cidr_block = "192.168.0.0/16"
}

resource "aws_internet_gateway" "igw-01" {
  vpc_id = aws_vpc.vpc-01.id
}

resource "aws_subnet" "pub-01" {
availability_zone_id = "use1-az1"
cidr_block = "192.168.1.0/24"
vpc_id = aws_vpc.vpc-01.id
}

resource "aws_subnet" "Priv-01" {
availability_zone_id = "use1-az1"
cidr_block = "192.168.2.0/24"
vpc_id = aws_vpc.vpc-01.id
}

resource "aws_route_table" "pub-rt" {
    vpc_id = aws_vpc.vpc-01.id
  }

  resource "aws_route" "pub-route" {
    route_table_id = aws_route_table.pub-rt.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-01.id
  }

  resource "aws_route_table_association" "pub_sub_ass" {
    route_table_id = aws_route_table.pub-rt.id
    subnet_id = aws_subnet.pub-01.id
  }