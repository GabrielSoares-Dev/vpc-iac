terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "s3" {
    bucket = "remote-state-devops-team"
    key    = "iac/vpc-iac/terraform.tfstate"
    region = "us-east-2"
  }
}