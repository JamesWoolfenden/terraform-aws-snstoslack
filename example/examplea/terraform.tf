terraform {
  required_providers {
    aws = {
      version = "4.31.0"
      source  = "hashicorp/aws"
    }

    archive = {
      source  = "hashicorp/archive"
      version = "2.2.0"
    }

  }
  required_version = ">=0.14.8"
}
