terraform {
  required_version = "~>1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }

  cloud {
    organization = "opheliah"
    workspaces {
      name = "s3-bucket-resources"
    }
  }
}

