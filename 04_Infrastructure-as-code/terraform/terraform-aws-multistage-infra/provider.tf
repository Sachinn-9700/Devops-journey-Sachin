variable "aws_region" {
  description = "AWS region"
  type        = string
}

provider "aws" {
  region = var.aws_region
}
