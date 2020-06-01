resource "azurerm_public_ip" "sb3-rg1" {
  name                = "sb3-rg1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  allocation_method   = "Dynamic"
}