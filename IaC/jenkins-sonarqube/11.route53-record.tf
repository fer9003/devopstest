data "aws_route53_zone" "zone" {
  name = "${var.dns_zone_name}."
}

resource "aws_route53_record" "jenkins" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "jenkins.${data.aws_route53_zone.zone.name}"
  type    = "A"
  ttl     = "300"

  records = [aws_eip.ec2_ip.public_ip]
}