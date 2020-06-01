# Create subnet
resource "azurerm_subnet" "sb1-rg1" {
  name                 = "sb1-rg1"
  virtual_network_name = azurerm_virtual_network.vn1-rg1.name
  resource_group_name  = azurerm_resource_group.rg1.name
  address_prefixes       = ["192.168.1.0/24"]
}