provider "aws" {
  region     = "us-east-1"
  access_key = "test"
  secret_key = "test"

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "sarthak_bucket" {
  bucket = "sarthak-${random_id.bucket_suffix.hex}"
  acl    = "private"
}
