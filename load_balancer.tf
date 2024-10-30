#Load balancer for the autoscaling group
resource "aws_lb" "web-load-balancer" {
  name               = "Web-load-balancer"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow-web-traffic.id]
  subnets            = [aws_subnet.subnet-eu-west-3a.id, aws_subnet.subnet-eu-west-3b.id, aws_subnet.subnet-eu-west-3c.id]
}

 