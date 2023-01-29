data "aws_sns_topic" "sns-topic" {
  for_each = var.sns-topics
  name = each.value["sns-topic-name"]
}

resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
  for_each =  var.sns-topics
  topic_arn = data.aws_sns_topic.sns-topic.arn
  protocol  = "email"
  endpoint  = "khatri.gopal@gmail.com"
}
