output "role_arn" {
  description = "The ARN of the IAM role"
  value       = aws_iam_role.role.arn
}

output "policy_arn" {
  description = "The ARN of the IAM policy"
  value       = aws_iam_policy.access_policy.arn
}
