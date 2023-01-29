resource "aws_s3_bucket" "s3-bucket" {
  for_each = var.s3-buckets
  bucket = each.value["s3_bucket_name"]
  policy = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "s3:*"
      ],
      "Effect": "Allow",
      "Resource": aws_s3_bucket.s3-bucket[each.key]
    }
  ]
}
EOT
}

