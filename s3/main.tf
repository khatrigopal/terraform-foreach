module "s3" {
  source     = "../modules/"
  s3-bucket= var.s3-buckets
}
