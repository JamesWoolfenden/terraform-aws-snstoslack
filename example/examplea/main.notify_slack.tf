module "notify_slack" {
  source            = "../../"
  sns_topic_name    = "slack-topic"
  slack_webhook_url = "https://hooks.slack.com/services/AAA/BBB/CCC"
  slack_channel     = "aws-notification"
  slack_username    = "reporter"
  common_tags       = var.common_tags
}
