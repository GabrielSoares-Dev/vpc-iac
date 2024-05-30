resource "aws_network_acl" "public_network_acl" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "public_network_acl"
  }
}

resource "aws_network_acl" "private_network_acl" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "private_network_acl"
  }
}