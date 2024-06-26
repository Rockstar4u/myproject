{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ${jsonencode(s3_actions)},
      "Resource": ${jsonencode(resources)}
    },
    {
      "Effect": "Allow",
      "Action": ${jsonencode(cloudtrail_actions)},
      "Resource": ${jsonencode(resources)}
    },
    {
      "Effect": "Allow",
      "Action": ${jsonencode(guardduty_actions)},
      "Resource": ${jsonencode(resources)}
    },
    {
      "Effect": "Allow",
      "Action": ${jsonencode(waf_actions)},
      "Resource": ${jsonencode(resources)}
    },
    {
      "Effect": "Allow",
      "Action": ${jsonencode(kms_actions)},
      "Resource": ${jsonencode(resources)}
    },
    {
      "Effect": "Allow",
      "Action": [
        "rds:*"
      ],
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": [
        "elasticloadbalancing:*"
      ],
      "Resource": "*"
    }
  ]
}
