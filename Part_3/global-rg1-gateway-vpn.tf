resource "azurerm_public_ip" "gw-rg1" {
  name                = "gw-rg1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  allocation_method   = "Dynamic"
}

# Create subnet
resource "azurerm_subnet" "gw-rg1" {
  name                 = "GatewaySubnet"
  virtual_network_name = azurerm_virtual_network.vn1-rg1.name
  resource_group_name  = azurerm_resource_group.rg1.name
  address_prefixes       = ["192.168.4.0/24"]
}