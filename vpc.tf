# The vpc
resource "aws_vpc" "web-vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name = "Web-vpc"
  }
}