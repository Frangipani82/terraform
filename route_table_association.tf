# Associate the route table with the three subnets of the vpc
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet-eu-west-3a.id
  route_table_id = aws_route_table.web-route-table.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet-eu-west-3b.id
  route_table_id = aws_route_table.web-route-table.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.subnet-eu-west-3c.id
  route_table_id = aws_route_table.web-route-table.id
}