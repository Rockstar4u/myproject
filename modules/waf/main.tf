resource "aws_waf_web_acl" "this" {
  name        = var.name
  metric_name = var.metric_name

  default_action {
    type = "ALLOW"
  }

  tags = {
    Name        = "waf"
    Environment = var.environment
    Project     = var.project
  }
}

output "waf_id" {
  value = aws_waf_web_acl.this.id
}
