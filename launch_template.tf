# Launch template for the auto scaling group
resource "aws_launch_template" "web-launch-template" {
  name                   = "Web-launch-template"
  image_id               = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ssh-key.key_name
  vpc_security_group_ids = [aws_security_group.allow-web-traffic.id]
  user_data              = filebase64("${path.module}/user_data.sh")
}