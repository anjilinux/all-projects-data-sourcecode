resource "aws_s3_bucket" "b" {
  bucket = local.bucket
}

resource "aws_s3_bucket_acl" "c" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

locals {
  bucket = "luxxy-covid-testing-system-pdf-pt-${random_string.bucket.result}"
}

resource "random_string" "bucket" {
  length  = 4
  lower = true
  special = false
  min_lower = 4
}