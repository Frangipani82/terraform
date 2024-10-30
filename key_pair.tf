#Key pair to connect to the EC2 instances with SSH
resource "aws_key_pair" "ssh-key" {
  key_name   = var.key_name
  public_key = file(var.key_path)
}