resource "aws_network_acl" "public_network_acl" {
  vpc_id = aws_vpc.main.id

  ingress {
    protocol   = "HTTPS"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

  egress {
    protocol   = "HTTPS"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

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