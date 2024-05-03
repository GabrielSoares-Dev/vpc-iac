resource "aws_subnet" "public_subnet" {
  for_each = var.public_subnets
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    name = each.value.name
    type = "public"
  }
}

resource "aws_subnet" "private_subnet" {
  for_each = var.private_subnets
  vpc_id     = aws_vpc.main.id
  cidr_block = each.value.cidr_block
  availability_zone = ach.value.availability_zone

  tags = {
    name = each.value.name
    type = "private"
  }
}