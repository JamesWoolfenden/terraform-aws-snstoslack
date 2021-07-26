data "aws_sns_topic" "exists" {
  count = (1 - var.create_sns_topic) * var.create
  name  = var.sns_topic_name
}

resource "aws_sns_topic" "this" {
  count             = var.create_sns_topic * var.create
  name              = var.sns_topic_name
  kms_master_key_id = "alias/aws/sns"
}

locals {
  sns_topic_arn = element(compact(concat(aws_sns_topic.this.*.arn, data.aws_sns_topic.exists.*.arn, tolist([""]))), 0)
}
