# Public route table tssociation
resource "aws_route_table_association" "pub_rt_ass" {
  subnet_id      = aws_subnet.pub_sub.id
  route_table_id = aws_route_table.pub_rt.id
}

# Private route table association
resource "aws_route_table_association" "pvt_rt_ass" {
  subnet_id      = aws_subnet.pvt_sub.id
  route_table_id = aws_route_table.pvt_rt.id
}