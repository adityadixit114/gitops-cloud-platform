terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source    = "./modules/eks"
  vpc_id    = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnet_ids
}
