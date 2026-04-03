terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-wz"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}
