terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.63"
    }
  }
  backend "s3" {
    bucket         = "eks-cluster-fm"
    key            = "dev/eks-cluster/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "kubernetes-blockstate"
  }
}

provider "aws" {
  region = var.aws_region
}