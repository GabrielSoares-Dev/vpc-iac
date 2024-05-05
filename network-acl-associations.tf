resource "aws_network_acl_association" "public_network_acl_associations" {
  for_each       = aws_subnet.public_subnet
  network_acl_id = aws_network_acl.public_network_acl.id
  subnet_id      = each.value.id
  depends_on     = [aws_subnet.public_subnet]
}

resource "aws_network_acl_association" "private_network_acl_associations" {
  for_each       = aws_subnet.private_subnet
  network_acl_id = aws_network_acl.private_network_acl.id
  subnet_id      = each.value.id
  depends_on     = [aws_subnet.private_subnet]
}