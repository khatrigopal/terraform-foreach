resource "aws_sns_topic" "sns-topic" {
  for_each = var.sns-topics
  name = each.value["sns-topic-name"]
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  topic_arn = data.aws_sns_topic.sns-topic.[each.key].name
  protocol  = "email"
  endpoint  = "khatri.gopal@gmail.com"
}
