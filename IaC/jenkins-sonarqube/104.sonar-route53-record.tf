
resource "aws_route53_record" "sonar" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "sonarqube.${data.aws_route53_zone.zone.name}"
  type    = "A"
  ttl     = "300"

  records = [aws_eip.ec2_sonar_ip.public_ip]
} 