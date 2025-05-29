provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "local_bucket" {
  bucket = "demo-local-bucket"
}
