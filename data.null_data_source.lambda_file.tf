data "null_data_source" "lambda_file" {
  inputs = {
    filename = "${path.module}/functions/notify_slack.py"
  }
}
