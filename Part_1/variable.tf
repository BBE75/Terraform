variable "rgName" {
    type      = string
  description = "Ressource group name"
}

variable "region" {
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

variable "tag" {
    type      = string
  description = "Tag to use for the infrastructure"
}