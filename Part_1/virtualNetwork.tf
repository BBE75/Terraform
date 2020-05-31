# Create virtual network
resource "azurerm_virtual_network" "virtualNetwork1" {
  name                = "virtualNetwork1"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name
  address_space       = ["192.168.0.0/16"]
  dns_servers         = ["168.63.129.16", "8.8.8.8"]

  tags = {
   environment =  var.tag
 }
}

# Create subnet
resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  virtual_network_name = azurerm_virtual_network.virtualNetwork1.name
  resource_group_name  = azurerm_resource_group.RG1.name
  address_prefixes       = ["192.168.1.0/24"]
}