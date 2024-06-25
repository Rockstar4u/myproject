resource "aws_eip" "this" {
  domain = "vpc"
}

resource "aws_nat_gateway" "this" {
  allocation_id = aws_eip.this.id
  subnet_id     = var.subnet_id

  tags = {
    Name        = "${var.project}_nat_gateway"
    Environment = var.environment
    Project     = var.project
  }
}

output "nat_gateway_id" {
  value = aws_nat_gateway.this.id
}


