provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true

  endpoints {
    s3  = "http://localhost:4566"
    sts = "http://localhost:4566"
  }

  # Use a nested config block for SDK options
  config {
    s3_force_path_style = true
  }
