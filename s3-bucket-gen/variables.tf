variable "s3_bucket_name" {
  type = string
}

variable "s3_bucket_tag" {
  type = string
  default = "test"
}

variable "aws_env" {
  type = string
  default = "dev"
}