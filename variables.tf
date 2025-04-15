variable "environment" {
  description = "The deployment environment (dev, prod)"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy to"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

# Add more variables as needed