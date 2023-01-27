module "public_bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.5.0"

  name                = "${local.name}-ec2-sg"
  description         = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
  vpc_id              = module.vpc.vpc_id
  ingress_rules       = ["ssh-tcp", "http-80-tcp", "https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags         = local.common_tags
}
