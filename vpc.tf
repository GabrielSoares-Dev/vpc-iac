resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true

  main_route_table_id    = aws_route_table.public_route_table.id

  tags = {
    Name = "Main VPC"
  }
}
