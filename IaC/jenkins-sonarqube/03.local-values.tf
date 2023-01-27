locals {
  name        = "${var.environment}-${var.ec2_name}"
  environment = var.environment
  common_tags = {
    environment = local.environment
  }

}