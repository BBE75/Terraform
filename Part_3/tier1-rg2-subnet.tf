# Create subnet
resource "azurerm_subnet" "sb1-rg2" {
  name                 = "sb1-rg2"
  virtual_network_name = azurerm_virtual_network.vn1-rg2.name
  resource_group_name  = azurerm_resource_group.rg2.name
  address_prefixes       = ["192.168.131.0/24"]
}