terraform {
  backend "s3" {
    bucket         = "ppgsandbox-backend-store"
    encrypt        = true
    key            = "postgres-migrator/terraform.tfstate"
    region         = "eu-west-2"
    profile        = "sbx"
    #dynamodb_table = "terraform-state-lock-dynamo"
  }
}

provider "aws" {
    region = "eu-west-2"

    profile = "sbx"
}