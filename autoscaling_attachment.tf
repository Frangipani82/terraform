# Associate the target group and the autoscaling group
resource "aws_autoscaling_attachment" "web-autoscaling-attachment" {
  autoscaling_group_name = aws_autoscaling_group.web-autoscaling-group.id
  lb_target_group_arn    = aws_lb_target_group.web-target-group.arn
}