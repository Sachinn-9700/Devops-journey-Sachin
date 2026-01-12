# Terraform AWS Multi-Stage EC2 Project

This repository contains a **multi-stage Terraform project** to deploy EC2 instances under a VPC with security groups on AWS.  
It demonstrates best practices for **reusable modules** and **multi-environment infrastructure** (dev and prod).

---

---

## ⚡ Modules

1. **VPC Module** (`modules/vpc`):  
   - Creates VPC, public and private subnets  
   - Outputs VPC ID and subnet IDs  

2. **Security Group Module** (`modules/security_group`):  
   - Creates Security Groups  
   - Allows configurable ingress & egress rules  

3. **EC2 Module** (`modules/ec2`):  
   - Creates EC2 instances  
   - Configurable instance type, key pair, subnet, and security groups  
   - Installs Apache2 via user data

---

## 🌱 Environments

### Dev Environment (`envs/dev`)
- For testing and debugging infrastructure  
- Smaller instance types and simplified configuration  
- Uses variables in `variables.tf` and values in `terraform.tfvars`  

### Prod Environment (`envs/prod`)
- Production-ready infrastructure  
- Full-scale EC2 instances  
- Separate variables and tfvars for prod-level configuration  

---
Outputs:

EC2 public IP address will be displayed

Apache2 should be running on the instance
