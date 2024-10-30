#Target group for the load balancer
resource "aws_lb_target_group" "web-target-group" {
  name     = "Web-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.web-vpc.id
}