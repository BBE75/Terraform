

variable "name-rg1" {
    type      = string
  description = "Ressource group name"
}

variable "name-rg2" {
    type      = string
  description = "Ressource group name"
}

variable "region-1" {
    type      = string
  description = "Location"
}

variable "region-2" {
    type      = string
  description = "Location"
}

variable "hostname" {
    type      = string
  description = "Hostname for the VM"
}

variable "admin_name" {
    type      = string
  description = "Admin user account username"
}

variable "admin_pass" {
    type      = string
  description = "Admin user account password"
}

variable "tag-1" {
    type      = string
  description = "Tag to use for the infrastructure"
}

variable "tag-2" {
    type      = string
  description = "Tag to use for the infrastructure"
}

variable "client_secret" {
    type      = string
  description = "Password of app on Azure"
}

variable "web-linux-vm-size" {
  type        = string
  description = "Size (SKU) of the virtual machine to create"
}

variable "business-linux-vm-size" {
  type        = string
  description = "Size (SKU) of the virtual machine to create"
}

variable "web-linux-license-type" {
  type        = string
  description = "Specifies the BYOL type for the virtual machine."
  default     = null
}
# Azure virtual machine storage settings #
variable "web-linux-delete-os-disk-on-termination" {
  type        = string
  description = "Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed?"
  default     = "true"  # Update for your environment
}
variable "web-linux-delete-data-disks-on-termination" {
  description = "Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed?"
  type        = string
  default     = "true" # Update for your environment
}
variable "web-linux-vm-image" {
  type        = map(string)
  description = "Virtual machine source image information"
  default     = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS" 
    version   = "latest"
  }
}