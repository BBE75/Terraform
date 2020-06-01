# Create virtual network
resource "azurerm_virtual_network" "vn1-rg2" {
  name                = "vn1-rg1"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name
  address_space       = ["192.168.128.0/17"]
  dns_servers         = ["168.63.129.16", "8.8.8.8"]

  tags = {
   environment =  var.tag-2
 }
}