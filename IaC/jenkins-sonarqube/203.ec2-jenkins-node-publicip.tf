resource "aws_eip" "ec2_jenkins_node_ip" {
  depends_on = [module.vpc, module.ec2_jenkins_node_public]
  instance   = module.ec2_jenkins_node_public.id
  vpc        = true
  tags       = local.common_tags
}