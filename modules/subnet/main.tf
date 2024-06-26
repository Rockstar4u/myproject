resource "aws_subnet" "this" {
  vpc_id            = var.vpc_id
  cidr_block              = var.cidr_block 
  map_public_ip_on_launch = true
  availability_zone       = var.region

  tags = {
    Name        = "${var.project}_subnet"
    Environment = var.environment
    Project     = var.project
  }
}

output "subnet_id" {
  value = aws_subnet.this.id
}
