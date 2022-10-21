variable "s3_bucket_name" {
  type = string
}

variable "s3_bucket_tag" {
  type    = string
  default = "test"
}

variable "aws_env" {
  type    = string
  default = "dev"
}

variable "s3_object_name" {
  type = string
  default = "data-analysis-csv"
}