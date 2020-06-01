# Create subnet
resource "azurerm_subnet" "sb3-rg2" {
  name                 = "GatewaySubnet"
  virtual_network_name = azurerm_virtual_network.vn1-rg2.name
  resource_group_name  = azurerm_resource_group.rg2.name
  address_prefixes       = ["192.168.133.0/24"]
}

output "virtual_network_name"{
  value = azurerm_subnet.sb3-rg2.id
}
