terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  # backend "s3" {
  #   bucket = "daws91.remote"
  #   key    = "dynamic"
  #   region = "us-east-1"
  #   dynamodb_table = "daws91.remote.tab"
  # }
}

provider "aws" {
  region = "us-east-1"
}