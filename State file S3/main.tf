provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "giri" {
        ami = "ami-09c813fb71547fc4f"
        instance_type = "t2.micro"
  
}

resource "aws_s3_bucket" "S3_bucket" {
  bucket = "giri-s3-demo"
}