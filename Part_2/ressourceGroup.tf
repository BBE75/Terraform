# Configure the Azure ARM provider
provider "azurerm" {

  subscription_id = "b48702b8-35e3-42fe-b31c-062f32df9c28"
  client_id       = "8171b893-afc8-4cd0-b191-8b1c66c93c3b"
  client_secret   = var.client_secret
  tenant_id       = "29399a22-90c3-4e3c-9d9b-a23b0cdf9a8e"

  features{}
}

# Create a resource group
resource "azurerm_resource_group" "RG1" {
  name     = var.rgName
  location = var.region
  tags = {
        environment =  var.tag
    }
}

# DDOS protection plan
resource "azurerm_network_ddos_protection_plan" "ddos" {
  name                = "ddos-protection"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name
}