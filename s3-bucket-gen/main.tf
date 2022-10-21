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

# add resource into amazon s3 bucket
resource "aws_s3_object" "object" {
  
  depends_on = [
    aws_s3_bucket.sample-bucket
  ]

  # only execute when there is a matching file
  count = fileexists("${local.file_path}") ? 1 : 0

  bucket = aws_s3_bucket.sample-bucket.id
  key    = var.s3_bucket_name
  source = local.file_path

}