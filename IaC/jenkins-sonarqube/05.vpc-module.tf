data "aws_availability_zones" "available" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"

  name           = local.name
  cidr           = var.vpc_cidr_block
  azs            = data.aws_availability_zones.available.names
  public_subnets = var.vpc_public_subnets


  enable_dns_hostnames = true
  enable_dns_support   = true

  tags     = local.common_tags
  vpc_tags = local.common_tags
}
