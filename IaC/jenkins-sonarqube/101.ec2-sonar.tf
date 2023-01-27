module "ec2_sonar_public" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "3.3.0"
  name                   = "${local.environment}-sonarqube"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type_sonar
  key_name               = var.instance_keypair
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [aws_security_group.ec2_sonarqube.id]
  tags                   = local.common_tags
  user_data              = file("./sonarqube.sh")
} 