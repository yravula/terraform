terraform {
  backend "s3" {
    bucket = "giri-s3-demo"
    region = "us-east-1"
    key = "giri/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}
