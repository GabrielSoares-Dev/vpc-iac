resource "aws_route_table_association" "public_route_table_to_public_subnet" {
  for_each = aws_subnet.public_subnet
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public_route_table.id
}