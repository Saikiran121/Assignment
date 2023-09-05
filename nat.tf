# NAT gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.pvt_sub.id

  tags = {
    Name = "NAT"
  }

  depends_on = [aws_internet_gateway.igw]
}