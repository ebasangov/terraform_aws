provider "aws" {
  profile = local.profile
  region  = "us-east-2"

}

## for remote state

# terraform {
#   backend "s3" {
#     bucket = "benae-s3-terraform"
#     key    = "prod/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
