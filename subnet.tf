# The three subnets in the vpc
resource "aws_subnet" "subnet-eu-west-3a" {
  vpc_id                  = aws_vpc.web-vpc.id
  cidr_block              = var.subnet_cidr_blocks[0]
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = true


  tags = {
    Name = "Subnet-eu-west-3a"
  }
}

resource "aws_subnet" "subnet-eu-west-3b" {
  vpc_id                  = aws_vpc.web-vpc.id
  cidr_block              = var.subnet_cidr_blocks[1]
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "Subnet-eu-west-3b"
  }
}

resource "aws_subnet" "subnet-eu-west-3c" {
  vpc_id                  = aws_vpc.web-vpc.id
  cidr_block              = var.subnet_cidr_blocks[2]
  availability_zone       = var.availability_zones[2]
  map_public_ip_on_launch = true

  tags = {
    Name = "Subnet-eu-west-3c"
  }
}