terraform {
  required_providers {
    aws = {
      version = "3.8.0"
      source  = "hashicorp/aws"
    }
    archive = {
      version = "1.2"
    }

    null = {
      version = "2.1"
    }

  }
}
