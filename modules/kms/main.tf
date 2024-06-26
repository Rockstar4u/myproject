data "aws_caller_identity" "current" {}

resource "aws_kms_key" "this" {
  description         = "KMS key for encryption"
  enable_key_rotation = true

  policy = templatefile("${path.module}/policy.tpl", {
    account_id = data.aws_caller_identity.current.account_id
  })

  tags = {
    Name        = "kms"
    Environment = var.environment
    Project     = var.project
  }
}

