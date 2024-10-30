# Internet gatweay associated with the vpc
resource "aws_internet_gateway" "web-gateway" {
  vpc_id = aws_vpc.web-vpc.id

  tags = {
    Name = "Web-gateway"
  }
}