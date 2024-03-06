terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.37.0"
    }
  }

  backend "s3" {
    bucket = "terraform6055"
    key    = "terraform"
    region = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
  alias = "east-1-cdn"
}

