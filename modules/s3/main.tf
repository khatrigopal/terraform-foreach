resource "aws_s3_bucket" "s3-bucket" {
  for_each = var.s3-buckets
  bucket = each.value["s3_bucket_name"]
}



