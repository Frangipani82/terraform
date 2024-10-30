#Hosted zone for route53
resource "aws_route53_zone" "web-zone" {
  name = var.domain
}