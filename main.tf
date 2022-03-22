terraform {
 backend "remote" {
    organization = "ilg-mentoria-diogenes"

    workspaces {
      name = "aws-enviroment"
    }
  }
}