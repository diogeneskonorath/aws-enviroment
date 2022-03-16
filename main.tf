terraform {
  required_version = ">= 1.1.7"
  required_providers {
    aws = ">= 3.37"
  }

  backend "s3" {
    bucket = "ilg-diogenes-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  profile                 = "ilg-mentoria"
  shared_credentials_file = "~/.aws/credentials"
  region                  = "us-east-1"
}