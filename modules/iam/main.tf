resource "aws_iam_policy" "access_policy" {
  name        = var.policy_name
  description = var.policy_description
  policy      = templatefile("${path.module}/policy.tpl", {
    s3_actions          = var.s3_actions
    cloudtrail_actions  = var.cloudtrail_actions
    guardduty_actions   = var.guardduty_actions
    waf_actions         = var.waf_actions
    kms_actions         = var.kms_actions
    rds_actions         = var.rds_actions
    alb_actions         = var.alb_actions
    resources           = var.resources
  })
}

resource "aws_iam_role" "role" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = var.assume_role_principals
    }
    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  role       = aws_iam_role.role.name
  policy_arn = aws_iam_policy.access_policy.arn
}
