# terraform-aws-snstoslack

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-snstoslack/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-snstoslack)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-snstoslack.svg)](https://github.com/JamesWoolfenden/terraform-aws-snstoslack/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-snstoslack.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-snstoslack/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-snstoslack/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-snstoslack&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-snstoslack/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-snstoslack&benchmark=INFRASTRUCTURE+SECURITY)

This module connects SNS to Slack.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "snstoslack" {
  source            = "JamesWoolfenden/snstoslack/aws"
  version           = "0.1.4"
  sns_topic_name    = "slack-topic"
  slack_webhook_url = "https://hooks.slack.com/services/AAA/BBB/CCC"
  slack_channel     = "aws-notification"
  slack_username    = "reporter"
}
```

## subscribes to a topics

```cli
aws-vault exec test -- aws sns subscribe --topic-arn arn:aws:sns:eu-west-2:10000000:slack-topic --protocol lambda --notification-endpoint arn:aws:lambda:eu-west-2:10000000:function:SlackNotification --region eu-west-2
```

- this will trigger an alarm

Do not abuse this power pls.

```cli
 aws-vault exec test --  aws cloudwatch set-alarm-state --alarm-name "JenkinsCPUMaxout" --state-value ALARM --state-reason "I LIKE SHOUTING"
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| archive | n/a |
| aws | n/a |
| null | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [archive_file](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) |
| [aws_iam_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) |
| [aws_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) |
| [aws_iam_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) |
| [aws_lambda_function](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) |
| [aws_lambda_permission](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) |
| [aws_sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/sns_topic) |
| [aws_sns_topic](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) |
| [aws_sns_topic_subscription](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) |
| [null_data_source](https://registry.terraform.io/providers/hashicorp/null/latest/docs/data-sources/data_source) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| common\_tags | n/a | `map(any)` | n/a | yes |
| create | Whether to create all resources | `string` | `true` | no |
| create\_sns\_topic | Whether to create new SNS topic | `string` | `true` | no |
| environment | n/a | `string` | `"M"` | no |
| lambda\_function\_name | The name of the Lambda function to create | `string` | `"notify_slack"` | no |
| slack\_channel | The name of the channel in Slack for notifications | `string` | n/a | yes |
| slack\_emoji | A custom emoji that will appear on Slack messages | `string` | `":aws:"` | no |
| slack\_username | The username that will appear on Slack messages | `string` | n/a | yes |
| slack\_webhook\_url | The URL of Slack webhook | `string` | n/a | yes |
| sns\_topic\_name | The name of the SNS topic to create | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_iam\_role | The IAM role used by Lambda function |
| notify\_slack\_lambda | The Lambda function |
| this\_slack\_topic\_arn | The ARN of the SNS topic from which messages will be sent to Slack |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-snstoslack/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-snstoslack/issues) to report any bugs or file feature requests.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-snstoslack&url=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-snstoslack&url=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_email]: mailto:?subject=terraform-aws-snstoslack&body=https://github.com/jameswoolfenden/terraform-aws-snstoslack
