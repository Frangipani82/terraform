# Security group applied to the EC2 instances
resource "aws_security_group" "allow-web-traffic" {
  name        = "Allow_web_traffic"
  description = "Allow inbound and outbound traffic"
  vpc_id      = aws_vpc.web-vpc.id

#Allowed inbound traffic for HTTP, SSH and ICMP
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = var.tcp_protocol
    cidr_blocks = [var.general_cidr_block]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = var.tcp_protocol
    cidr_blocks = [var.general_cidr_block]
  }

  ingress {
    description = "ICMP"
    from_port   = -1
    to_port     = -1
    protocol    = var.icmp_protocol
    cidr_blocks = [var.general_cidr_block]
  }

  # Everything is allowed for the outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.general_cidr_block]
  }
}