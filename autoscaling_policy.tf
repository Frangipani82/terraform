#Policy for scaling up in the autoscaling group
resource "aws_autoscaling_policy" "upscaling-policy" {
  name                   = "Upscaling-policy"
  autoscaling_group_name = aws_autoscaling_group.web-autoscaling-group.name
  policy_type            = "TargetTrackingScaling"
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = var.target_scaling
  }
}
