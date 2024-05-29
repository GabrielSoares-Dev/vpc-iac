resource "aws_ssm_parameter" "vpc_main_id" {
  name        = "/vpc/main/id"
  description = "Vpc id"
  type        = "String"
  value       = aws_vpc.main.id
}