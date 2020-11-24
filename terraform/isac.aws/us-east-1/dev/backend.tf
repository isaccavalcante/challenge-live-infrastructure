terraform {
  backend "s3" {
    bucket         = "isac.aws-us-east-1-terraform-challenge"
    dynamodb_table = "terraform-locks"
    key            = "terraform-only/terraform.tfstate"
    region         = "us-east-1"
  }
}