resource "aws_eip" "ec2_sonar_ip" {
  depends_on = [module.vpc, module.ec2_sonar_public]
  instance   = module.ec2_sonar_public.id
  vpc        = true
  tags       = local.common_tags
}  