terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket   = "nachavunenchasthanekendku"
    key      = "rsession4_vpc.tfstate"
    region   = "us-east-1"
    dynamodb_table = "roboshop-locking"

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}