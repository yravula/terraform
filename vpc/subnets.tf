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