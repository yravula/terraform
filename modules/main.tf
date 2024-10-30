provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./Modules/ec2_instances"
  ami_value = "ami-09c813fb71547fc4f"
  instance_type_value = "t2.micro"
}
