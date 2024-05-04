variable "public_subnets" {
  type = map(object({
    name              = string
    cidr_block        = string
    availability_zone = string
  }))

  default = {
    first = {
      name              = "first_public_subnet"
      cidr_block        = "10.0.0.0/20"
      availability_zone = "us-east-2a"
    },
    second = {
      name              = "second_public_subnet"
      cidr_block        = "10.0.16.0/20"
      availability_zone = "us-east-2b"
    },
    third = {
      name              = "third_public_subnet"
      cidr_block        = "10.0.32.0/20"
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
    first = {
      name              = "first_private_subnet"
      cidr_block        = "10.0.48.0/20"
      availability_zone = "us-east-2a"
    },
    second = {
      name              = "second_private_subnet"
      cidr_block        = "10.0.64.0/20"
      availability_zone = "us-east-2b"
    },
    third = {
      name              = "third_private_subnet"
      cidr_block        = "10.0.80.0/20"
      availability_zone = "us-east-2c"
    }
  }
}


