resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  tags = {
    Name        = "route_table"
    Environment = var.environment
    Project     = var.project
  }
}

resource "aws_route" "default_route" {
  route_table_id         = aws_route_table.this.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.gateway_id
}

output "route_table_id" {
  value = aws_route_table.this.id
}
