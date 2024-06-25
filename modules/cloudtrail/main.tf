resource "aws_cloudtrail" "this" {
  name                          = var.trail_name
  s3_bucket_name                = var.s3_bucket_name
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_logging                = true

  event_selector {
    read_write_type           = "All"
    include_management_events = true

    data_resource {
      type   = "AWS::S3::Object"
      values = ["arn:aws:s3:::${var.s3_bucket_name}/"]
    }
  }

  tags = {
    Name        = "cloudtrail"
    Environment = var.environment
    Project     = var.project
  }
}

output "cloudtrail_arn" {
  value = aws_cloudtrail.this.arn
}
