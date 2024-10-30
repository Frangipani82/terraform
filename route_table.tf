# The route table connected to the vpc with the routes
resource "aws_route_table" "web-route-table" {
  vpc_id = aws_vpc.web-vpc.id

  route {
    cidr_block = var.general_cidr_block
    gateway_id = aws_internet_gateway.web-gateway.id
  }

  tags = {
    Name = "Web-route-table"
  }
}