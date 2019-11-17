
[![Slalom][logo]](https://slalom.com)

# terraform-aws-snstoslack [![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-aws-snstoslack.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-snstoslack) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-snstoslack.svg)](https://github.com/JamesWoolfenden/terraform-aws-snstoslack/releases/latest)

This module connects sns to slack.

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

# this will trigger an alarm

Do not abuse this power pls.

```cli
 aws-vault exec test --  aws cloudwatch set-alarm-state --alarm-name "JenkinsCPUMaxout" --state-value ALARM --state-reason "I LIKE SHOUTING"
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| common\_tags |  | map | n/a | yes |
| create | Whether to create all resources | string | `"true"` | no |
| create\_sns\_topic | Whether to create new SNS topic | string | `"true"` | no |
| environment |  | string | `"M"` | no |
| lambda\_function\_name | The name of the Lambda function to create | string | `"notify_slack"` | no |
| slack\_channel | The name of the channel in Slack for notifications | string | n/a | yes |
| slack\_emoji | A custom emoji that will appear on Slack messages | string | `":aws:"` | no |
| slack\_username | The username that will appear on Slack messages | string | n/a | yes |
| slack\_webhook\_url | The URL of Slack webhook | string | n/a | yes |
| sns\_topic\_name | The name of the SNS topic to create | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| lambda\_iam\_role\_arn | The ARN of the IAM role used by Lambda function |
| lambda\_iam\_role\_name | The name of the IAM role used by Lambda function |
| notify\_slack\_lambda\_function\_arn | The ARN of the Lambda function |
| notify\_slack\_lambda\_function\_invoke\_arn | The ARN to be used for invoking Lambda function from API Gateway |
| notify\_slack\_lambda\_function\_last\_modified | The date Lambda function was last modified |
| notify\_slack\_lambda\_function\_name | The name of the Lambda function |
| notify\_slack\_lambda\_function\_version | Latest published version of your Lambda function |
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

## Copyrights

Copyright © 2019-2019 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png

[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-snstoslack&url=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-snstoslack&url=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_reddit]: https://reddit.com/submit/?url=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/jameswoolfenden/terraform-aws-snstoslack
[share_email]: mailto:?subject=terraform-aws-snstoslack&body=https://github.com/jameswoolfenden/terraform-aws-snstoslack
