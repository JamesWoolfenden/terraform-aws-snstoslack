provider "aws" {
  version = "~>2.50.0"
  region  = "eu-west-1"
}

provider "archive" {
  version = "1.2"
}

provider "null" {
  version = "2.1"
}
