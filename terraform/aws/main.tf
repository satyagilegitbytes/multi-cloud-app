provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true

  endpoints {
    s3  = "http://localhost:4566"
    sts = "http://localhost:4566"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "sarthak_bucket" {
  bucket = "sarthak-${random_id.bucket_suffix.hex}"
}

resource "aws_s3_bucket_acl" "sarthak_bucket_acl" {
  bucket = aws_s3_bucket.sarthak_bucket.id
  acl    = "private"
}
