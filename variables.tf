variable "azure_region" {
  description = "Azure region where resources will be created"
  default     = "westeurope"
}

variable "admin_username" {
  description = "Admin username for the VM"
  default     = "azureuser"
}
