module "s3" {
  source     = "../modules/s3"
  s3-buckets = var.s3-buckets
  }
module "policy" {
  source     = "../modules/policy"
}
