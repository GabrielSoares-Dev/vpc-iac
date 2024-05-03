resource "aws_subnet" "public_subnet" {
  for_each = { for index, zone in var.subnet_availability_zones : index => zone }
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/20"
  availability_zone = each.value

  tags = {
    type = "public"
  }
}

resource "aws_subnet" "private_subnet" {
  for_each = { for index, zone in var.subnet_availability_zones : index => zone }
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.16.0/20"
  availability_zone = each.value

  tags = {
    type = "private"
  }
}