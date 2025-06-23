terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }

  backend "s3" {
    bucket = "-rroboshop-infra-devemote-state"
    key    = "roboshop-infra-dev-sg"
    region = "us-east-1"
    dynamodb_table = "roboshop-infra-dev-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}