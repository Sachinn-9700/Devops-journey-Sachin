# Security Group ID
# Used by EC2 module
output "sg_id" {
  value = aws_security_group.this.id
}
