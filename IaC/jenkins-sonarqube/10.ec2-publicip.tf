resource "aws_eip" "ec2_ip" {
  depends_on = [module.ec2_public, module.vpc]
  instance   = module.ec2_public.id
  vpc        = true
  tags       = local.common_tags
}
