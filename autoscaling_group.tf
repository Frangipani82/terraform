#Autoscaling group
resource "aws_autoscaling_group" "web-autoscaling-group" {
  name             = "Web-autoscaling-group"
  max_size         = var.max_size
  min_size         = var.min_size
  desired_capacity = var.desired_size

  launch_template {
    id = aws_launch_template.web-launch-template.id
  }

  vpc_zone_identifier = [aws_subnet.subnet-eu-west-3a.id, aws_subnet.subnet-eu-west-3b.id, aws_subnet.subnet-eu-west-3c.id]

  tag {
    key                 = "Name"
    value               = "Autoscaling-web"
    propagate_at_launch = true
  }
}