variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "ap-southeast-2"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for launch template"
  default     = "t3a.micro"
}

variable "application_port" {
  type        = string
  description = "Application port"
}

variable "cluster_name" {
  type        = string
  description = "ECS cluster name"
}

variable "system_name" {
  type        = string
  description = "System name that the infrastructure is created for"
}

variable "user_data" {
  type        = string
  description = "User data to be applied to launch template"
}
