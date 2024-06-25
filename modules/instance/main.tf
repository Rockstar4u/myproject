resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = [var.security_group_id]

  tags = {
    Name        = "instance"
    Environment = var.environment
    Project     = var.project
  }
}

output "instance_id" {
  value = aws_instance.this.id
}
