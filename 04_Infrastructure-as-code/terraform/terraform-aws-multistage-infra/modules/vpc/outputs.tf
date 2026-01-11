# Output VPC ID
# Used by other modules (SG, EC2)
output "vpc_id" {
  value = aws_vpc.this.id
}

# Output public subnet ID
# Used by EC2 module
output "public_subnet_id" {
  value = aws_subnet.public.id
}
