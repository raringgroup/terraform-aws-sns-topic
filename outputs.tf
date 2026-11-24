## ----------------------------------------------------------------------------
## Copyright 2026 Raring Group LLC
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
## ----------------------------------------------------------------------------

output "sns_topic" {
  value       = one(aws_sns_topic.this[*])
  description = "SNS topic."
}

output "sns_topic_name" {
  value       = local.sqs_queue_name
  description = "SNS topic name."
}

output "sns_topic_id" {
  value       = join("", aws_sns_topic.this[*].id)
  description = "SNS topic ID."
}

output "sns_topic_arn" {
  value       = join("", aws_sns_topic.this[*].arn)
  description = "SNS topic ARN."
}

output "sns_topic_owner" {
  value       = join("", aws_sns_topic.this[*].owner)
  description = "SNS topic owner."
}

output "aws_sns_topic_subscriptions" {
  value       = aws_sns_topic_subscription.this[*]
  description = "SNS topic subscription."
}

output "dead_letter_queue_url" {
  description = "The URL for the created dead letter SQS queue."
  value       = join("", aws_sqs_queue.dead_letter_queue[*].url)
}

output "dead_letter_queue_id" {
  description = "The ID for the created dead letter queue. Same as the URL."
  value       = join("", aws_sqs_queue.dead_letter_queue[*].id)
}

output "dead_letter_queue_name" {
  description = "The name for the created dead letter queue."
  value       = local.sqs_queue_name
}

output "dead_letter_queue_arn" {
  description = "The ARN of the dead letter queue."
  value       = join("", aws_sqs_queue.dead_letter_queue[*].arn)
}
