variable "create" {
  type        = string
  description = "Whether to create all resources"
  default     = true
}

variable "create_sns_topic" {
  type        = string
  description = "Whether to create new SNS topic"
  default     = true
}

variable "lambda_function_name" {
  type        = string
  description = "The name of the Lambda function to create"
  default     = "notify_slack"
}

variable "sns_topic_name" {
  type        = string
  description = "The name of the SNS topic to create"
}

variable "slack_webhook_url" {
  type        = string
  description = "The URL of Slack webhook"
}

variable "slack_channel" {
  type        = string
  description = "The name of the channel in Slack for notifications"
}

variable "slack_username" {
  type        = string
  description = "The username that will appear on Slack messages"
}

variable "slack_emoji" {
  type        = string
  description = "A custom emoji that will appear on Slack messages"
  default     = ":aws:"
}

variable "common_tags" {
  type = map
}

variable "environment" {
  type    = string
  default = "M"
}
