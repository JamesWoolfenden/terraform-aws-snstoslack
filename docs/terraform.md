## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common_tags | - | map | - | yes |
| create | Whether to create all resources | string | `true` | no |
| create_sns_topic | Whether to create new SNS topic | string | `true` | no |
| depends_on | This is a way to make a module depends on, which isnt built in. | list | `<list>` | no |
| environment | - | string | `M` | no |
| lambda_function_name | The name of the Lambda function to create | string | `notify_slack` | no |
| slack_channel | The name of the channel in Slack for notifications | string | - | yes |
| slack_emoji | A custom emoji that will appear on Slack messages | string | `:aws:` | no |
| slack_username | The username that will appear on Slack messages | string | - | yes |
| slack_webhook_url | The URL of Slack webhook | string | - | yes |
| sns_topic_name | The name of the SNS topic to create | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| lambda_iam_role_arn | The ARN of the IAM role used by Lambda function |
| lambda_iam_role_name | The name of the IAM role used by Lambda function |
| notify_slack_lambda_function_arn | The ARN of the Lambda function |
| notify_slack_lambda_function_invoke_arn | The ARN to be used for invoking Lambda function from API Gateway |
| notify_slack_lambda_function_last_modified | The date Lambda function was last modified |
| notify_slack_lambda_function_name | The name of the Lambda function |
| notify_slack_lambda_function_version | Latest published version of your Lambda function |
| this_slack_topic_arn | The ARN of the SNS topic from which messages will be sent to Slack |
