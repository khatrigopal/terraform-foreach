resource "aws_sns_topic" "sns-topic" {
  for_each = var.sns-topic-name
  name = each.value["sns_topic_name"]
}

