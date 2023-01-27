variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "ec2_name" {
  type    = string
  default = "jenkins"
}

variable "dns_zone_name" {
  type    = string
  default = "sandboxenv.site"
}

variable "ssh_key_private" {
  type    = string
  default = "/Users/andres/devops_test/IaC/jenkins-sonarqube/private-key/fmora_prod_key_ohio.pem"
}