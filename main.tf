terraform {
  required_version = ">= 1.1.5"
  required_providers {
    aws = ">= 3"
  }

  cloud {
    organization = "ilg-mentoria-diogenes"
    workspaces {
      name = "aws-enviroment"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "client-vpc"{
  source       ="git::ssh://git@github.com/diogeneskonorath/aws-vpc.git"
  vpc_cidr     = var.vpc_cidr
  vpc_name     = var.vpc_name
  private_subnets = module.client-vpc.private_subnets
  public_subnets = module.client-vpc.public_subnets
  nat_ips = module.client-vpc.nat_ips
  nat_gateway = module.client-vpc.nat_gateway
}