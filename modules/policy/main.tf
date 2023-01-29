resource "aws_s3_bucket_policy" "my-first-policy" {
  bucket = data.s3-buckets[each.key].name
  for_each = var.policy
  policy = <<EOF
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
EOF
}
