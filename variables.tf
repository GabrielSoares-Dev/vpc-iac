variable "public_subnets" {
  type = map(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))

  default = {
    public_subnet_us-east_2a = {
      name              = "public_subnet_us-east_2a"
      cidr_block        = "172.31.0.0/16"
      availability_zone = "us-east-2a"
    },
    public_subnet_us-east_2b = {
      name              = "public_subnet_us-east_2b"
      cidr_block        = "172.31.16.0/16"
      availability_zone = "us-east-2b"
    },
    public_subnet_us-east_2c = {
      name              = "public_subnet_us-east_2c"
      cidr_block        = "172.31.32.0/16"
      availability_zone = "us-east-2c"
    }
  }
}

variable "private_subnets" {
  type = map(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))

  default = {
    private_subnet_us-east_2a = {
      name              = "private_subnet_us-east_2a"
      cidr_block        = "172.31.48.0/16"
      availability_zone = "us-east-2a"
    },
    private_subnet_us-east_2b = {
      name              = "private_subnet_us-east_2b"
      cidr_block        = "172.31.64.0/16"
      availability_zone = "us-east-2b"
    },
    private_subnet_us-east_2c = {
      name              = "private_subnet_us-east_2c"
      cidr_block        = "172.31.80.0/16"
      availability_zone = "us-east-2c"
    }
  }
}


