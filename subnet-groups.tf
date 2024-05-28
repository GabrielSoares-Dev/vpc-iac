resource "aws_db_subnet_group" "private_subnet_group" {
  name       = "private_subnet_group"
  subnet_ids = [for subnet in aws_subnet.private_subnet : subnet.id]

  tags = {
    Name = "Private subnet group"
  }
}

resource "aws_db_subnet_group" "public_subnet_group" {
  name       = "public_subnet_group"
  subnet_ids = [for subnet in aws_subnet.public_subnet : subnet.id]

  tags = {
    Name = "Public subnet group"
  }
}