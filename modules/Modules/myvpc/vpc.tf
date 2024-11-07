module "vpc_module" {
  source = "../vpc"
  region = var.region
  vpc_cidr_block = var.vpc_cidr_block
  pub_availability_zone_id = var.pub_availability_zone_id
  pub_cidr_block = var.pub_cidr_block
  priv_availability_zone_id = var.priv_availability_zone_id 
  priv_cidr_block = var.priv_cidr_block 
  rt_dest_cidr = var.rt_dest_cidr 
}