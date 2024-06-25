resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "internet_gateway"
    Environment = var.environment
    Project     = var.project
  }
}

output "internet_gateway_id" {
  value = aws_internet_gateway.this.id
}
