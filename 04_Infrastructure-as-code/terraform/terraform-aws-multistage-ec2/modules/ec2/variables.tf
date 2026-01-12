variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where EC2 will be launched"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to EC2"
  type        = list(string)
}

variable "instance_name" {
  description = "Tag name for EC2 instance"
  type        = string
}
