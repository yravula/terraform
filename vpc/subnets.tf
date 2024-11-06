resource "aws_subnet" "pub-01" {
availability_zone_id = var.pub_availability_zone_id
cidr_block = var.pub_cidr_block
vpc_id = aws_vpc.vpc-01.id
}
resource "aws_subnet" "priv-01" {
availability_zone_id = var.priv_availability_zone_id
cidr_block = var.priv_cidr_block
vpc_id = aws_vpc.vpc-01.id
}

