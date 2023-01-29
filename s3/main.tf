module "s3" {
  source     = "../modules/s3"
  s3-buckets = var.s3-buckets
  }
module "sns-topics" {
  source     = "../modules/sns"
  sns-topic-name = var.sns-topics
}
