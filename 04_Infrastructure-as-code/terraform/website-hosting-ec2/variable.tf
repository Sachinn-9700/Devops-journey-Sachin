#set instance type
variable "instance_type" {
  type = string
  default = "t3.micro"
}

#set the key name
variable "key_name" {
  type = string
  default = "Devops_key"
}