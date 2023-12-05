terraform {
  backend "s3" {
    bucket         = "ppgproduction-backend-store"
    encrypt        = true
    key            = "postgres-migrator/terraform.tfstate"
    region         = "eu-west-2"
    profile        = "prod"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}

provider "aws" {
    region = "eu-west-2"

    profile = "prod"
}