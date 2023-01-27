terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.70"
    }
  }

  backend "s3" {
    bucket         = "eks-cluster-fm"
    key            = "dev/jenkins/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "eks-blockstate-fm"
  }
}

provider "aws" {
  region = var.aws_region
}