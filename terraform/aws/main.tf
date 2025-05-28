provider "aws" {
  access_key = "test"
  secret_key = "test"
  region     = "us-east-1"
  s3_force_path_style = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "local_bucket" {
  bucket = "demo-local-bucket"
}
