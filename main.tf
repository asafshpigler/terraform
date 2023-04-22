# variable "provider_token" {
#   type = string
#   sensitive = true
# }

terraform {
  cloud {
    organization = "example-org-fd4452"

    workspaces {
      name = "terraform"
    }
  }

  required_version = ">= 1.1.2"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAWTY3VJ3UOMZU4LTL"
  secret_key = "WKPvliF2iGoxyTqsCw3jtFGznAycmQv41v2xZasq"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}