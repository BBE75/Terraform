resource "azurerm_public_ip" "sb3-rg2" {
  name                = "sb3-rg2"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
  allocation_method   = "Dynamic"
}