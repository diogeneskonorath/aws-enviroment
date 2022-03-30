terraform {
  backend "remote" {
    organization = "ilg-mentoria-diogenes"

    workspaces {
      name = "aws-enviroment"
    }
  }
}

module "client-vpc"{
  source       ="git@github.com:diogeneskonorath/aws-vpc.git"
  vpc_cidr     = var.vpc_cidr
  vpc_name     = var.environment
  nat_count    = 1
  cluster_name = var.cluster_name
  environment  = var.environment
  aws_region   = var.aws_region
}