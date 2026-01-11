# Security Group for web server
# Name is auto-generated using environment
resource "aws_security_group" "this" {
  name        = "web-sg-${var.env}"
  description = "Web server security group"
  vpc_id      = var.vpc_id

  # Allow SSH access
  # In real prod, this would be restricted
  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow HTTP traffic
  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "web-sg-${var.env}"  
    Environment = var.env
  }
}
