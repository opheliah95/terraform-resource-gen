resource "aws_s3_bucket" "sample-bucket" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = var.s3_bucket_tag
    Environment = var.aws_env
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.sample-bucket.id
  acl    = "private"
}