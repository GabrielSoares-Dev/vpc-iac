resource "aws_network_acl" "public_network_acl" {
  vpc_id = aws_vpc.main.id

  ingress {
    protocol   = "-1" 
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
  }

  egress {
   protocol   = "-1" 
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
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