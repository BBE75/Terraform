# Configure the Azure ARM provider
provider "azurerm" {

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