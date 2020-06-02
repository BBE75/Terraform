resource "azurerm_public_ip" "gw-rg2" {
  name                = "gw-rg2"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
  allocation_method   = "Dynamic"
}

# Create subnet
resource "azurerm_subnet" "gw-rg2" {
  name                 = "GatewaySubnet"
  virtual_network_name = azurerm_virtual_network.vn1-rg2.name
  resource_group_name  = azurerm_resource_group.rg2.name
  address_prefixes       = ["192.168.134.0/24"]
}