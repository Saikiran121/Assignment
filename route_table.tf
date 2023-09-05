# Public route table
resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "172.31.0.0/16"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public route table"
  }
}

# Private route table
resource "aws_route_table" "pvt_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "172.32.0.0/16"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "private route table"
  }
}