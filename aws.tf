provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      "owner"        = "DevopsTeam"
      "project-name" = "vpc-iac"
      "managed-by"   = "terraform"
    }
  }
}