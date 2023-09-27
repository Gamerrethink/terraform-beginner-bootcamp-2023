#resource "aws_s3_bucket" "website_bucket" {
#  bucket = var.bucket_name
#
#  tags = {
#    UserUuid = var.user_uuid
#  }
#}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}