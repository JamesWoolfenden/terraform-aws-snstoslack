resource "aws_lambda_function" "notify_slack" {
  # checkov:skip=CKV_AWS_115: ADD REASON
  # checkov:skip=CKV_AWS_116: ADD REASON
  # checkov:skip=CKV_AWS_117: ADD REASON

  count = var.create

  filename = "${path.module}/functions/notify_slack.zip"

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

  kms_key_arn = var.kms_key_id

  tracing_config {
    mode = "Active"
  }

  lifecycle {
    ignore_changes = [
      filename,
      last_modified,
      tags,
    ]
  }

  depends_on = [
    data.archive_file.notify_slack
  ]

  tags = var.common_tags
}
