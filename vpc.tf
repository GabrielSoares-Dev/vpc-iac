resource "aws_vpc" "main" {
  cidr_block           = "172.31.0.0/16"
  enable_dns_hostnames = true


  tags = {
    Name = "Main VPC"
  }
}
