provider "archive" {
  version = "1.1"
}

provider "aws" {
  version = "1.56"
  region  = "${var.region}"
}

provider "null" {
  version = "2.0"
}
