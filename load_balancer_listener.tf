#Connect the target group and the load balancer
resource "aws_lb_listener" "lb-listener" {
  load_balancer_arn = aws_lb.web-load-balancer.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web-target-group.arn
  }
}