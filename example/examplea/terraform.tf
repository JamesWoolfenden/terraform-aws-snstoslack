terraform {
  required_providers {
    aws = {
      version = "3.31.0"
      source  = "hashicorp/aws"
    }
    archive = {
      version = "1.2"
    }

    null = {
      version = "2.1"
    }

  }
  required_version = ">= 0.14"
}
