resource "aws_guardduty_detector" "this" {
  enable = true

  tags = {
    Name        = "guardduty"
    Environment = var.environment
    Project     = var.project
  }
}

output "guardduty_id" {
  value = aws_guardduty_detector.this.id
}
