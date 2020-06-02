resource "azurerm_virtual_network_gateway" "gw-rg1" {
  name                = "gw-rg1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  type     = "Vpn"
  vpn_type = "RouteBased"
  sku      = "Basic"

  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.gw-rg1.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.gw-rg1.id
  }
}

resource "azurerm_virtual_network_gateway" "gw-rg2" {
  name                = "gw-rg2"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name

  type     = "Vpn"
  vpn_type = "RouteBased"
  sku      = "Basic"

  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.gw-rg2.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.gw-rg2.id
  }
}


resource "azurerm_virtual_network_gateway_connection" "rg1-to-rg2" {
  name                = "rg1-to-rg2"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.gw-rg1.id
  peer_virtual_network_gateway_id = azurerm_virtual_network_gateway.gw-rg2.id

  shared_key = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
}

resource "azurerm_virtual_network_gateway_connection" "rg2-to-rg1" {
  name                = "rg2-to-rg1"
  location            = azurerm_resource_group.rg2.location
  resource_group_name = azurerm_resource_group.rg2.name

  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.gw-rg2.id
  peer_virtual_network_gateway_id = azurerm_virtual_network_gateway.gw-rg1.id

  shared_key = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
}