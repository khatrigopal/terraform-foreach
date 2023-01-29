data "aws_sns_topic" "sns-topic" {
  for_each = var.sns-topics
  name = each.value["sns-topic-name"]
}
