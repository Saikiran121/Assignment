# Public subnet
resource "aws_subnet" "pub_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.31.0.0/20"

  tags = {
    Name = "public subnet"
  }
}

# Private subnet
resource "aws_subnet" "pvt_sub" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "172.31.32.0/20"

  tags = {
    Name = "private subnet"
  }
}