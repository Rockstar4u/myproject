resource "aws_kms_key" "this" {
  description             = "KMS key for encryption"
  enable_key_rotation     = true

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Id": "key-default-1",
  "Statement": [
    {
      "Sid": "Enable IAM User Permissions",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
EOF

  tags = {
    Name        = "kms"
    Environment = var.environment
    Project     = var.project
  }
}

output "kms_key_id" {
  value = aws_kms_key.this.id
}
