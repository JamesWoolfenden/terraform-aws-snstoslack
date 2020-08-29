resource "aws_lambda_function" "notify_slack" {
  count = var.create

  filename = data.archive_file.notify_slack.0.output_path

  function_name = var.lambda_function_name

  role             = aws_iam_role.lambda.0.arn
  handler          = "notify_slack.lambda_handler"
  source_code_hash = data.archive_file.notify_slack.0.output_base64sha256
  runtime          = "python3.6"
  timeout          = 30

  environment {
    variables = {
      SLACK_WEBHOOK_URL = var.slack_webhook_url
      SLACK_CHANNEL     = var.slack_channel
      SLACK_USERNAME    = var.slack_username
      SLACK_EMOJI       = var.slack_emoji
    }
  }

  tracing_config {
    mode = "Active"
  }

  lifecycle {
    ignore_changes = [
      filename,
      last_modified,
    ]
  }

  tags = var.common_tags
}
