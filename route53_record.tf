#Forwarding traffic from domain name to load balancer
resource "aws_route53_record" "web-record" {
  zone_id        = aws_route53_zone.web-zone.zone_id
  name           = var.domain
  type           = "A"
  set_identifier = var.route_identifier

  alias {
    name                   = aws_lb.web-load-balancer.dns_name
    zone_id                = aws_lb.web-load-balancer.zone_id
    evaluate_target_health = true
  }

  geolocation_routing_policy {
    country = "*"
  }
}