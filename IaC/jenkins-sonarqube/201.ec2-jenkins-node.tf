module "ec2_jenkins_node_public" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "3.3.0"
  name                   = "${local.environment}-jenkins-node"
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type_jenkins_node
  key_name               = var.instance_keypair
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.ec2_jenkins_node_sg.id]
  user_data              = file("./script.sh")
  tags                   = local.common_tags
} 