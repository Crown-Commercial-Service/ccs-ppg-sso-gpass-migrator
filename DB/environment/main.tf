terraform {
  backend "s3" {
    bucket         = "ppgpreprod-backend-store"
    encrypt        = true
    key            = "postgres-migrator/terraform.tfstate"
    region         = "eu-west-2"
    profile        = "preprod"
    #dynamodb_table = "terraform-state-lock-dynamo"
  }
}

provider "aws" {
    region = "eu-west-2"

    profile = "preprod"
}