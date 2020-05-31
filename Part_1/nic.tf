# Create network interface
resource "azurerm_network_interface" "nic1" {
    name                      = "nic1"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig1"
        subnet_id                     = azurerm_subnet.subnet1.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = azurerm_public_ip.publicIp1.id
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link1" {
    network_interface_id      = azurerm_network_interface.nic1.id
    network_security_group_id = azurerm_network_security_group.nsg1.id
}