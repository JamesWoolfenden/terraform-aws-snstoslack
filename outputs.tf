output "this_slack_topic_arn" {
  description = "The ARN of the SNS topic from which messages will be sent to Slack"
  value       = local.sns_topic_arn
}

output "lambda_iam_role" {
  description = "The IAM role used by Lambda function"
  value       = aws_iam_role.lambda
}

output "notify_slack_lambda" {
  description = "The Lambda function"
  value       = aws_lambda_function.notify_slack
}
