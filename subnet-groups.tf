resource "aws_db_subnet_group" "private_subnet_group" {
  name       = "private_subnet_group"
  subnet_ids = [for subnet in aws_subnet.private_subnet.id : subnet.id]

  tags = {
    Name = "Private subnet group"
  }
}