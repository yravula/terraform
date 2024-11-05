terraform {
  backend "s3" {
    bucket         = "giri-terraform-state"
    key            = "us-east-1/vpc/tfstate"
    region         = "us-east-1"
    dynamodb_table = "demo_table"
  }
}
