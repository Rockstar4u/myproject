resource "aws_security_group" "this" {
  name        = "security_group"
  description = "Security group for the project"
  vpc_id      = var.vpc_id

  # Allow HTTP traffic from VPN clients
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpn_cidr]    # Use variable for VPN CIDR block
  }

  # Allow HTTPS traffic from VPN clients
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_cidr]    # Use variable for VPN CIDR block
  }

  # Restrict outbound traffic to VPN clients
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.vpn_cidr]    # Use variable for VPN CIDR block
  }

  tags = {
    Name        = "security_group"
    Environment = var.environment
    Project     = var.project
  }
}

output "security_group_id" {
  value = aws_security_group.this.id
}
