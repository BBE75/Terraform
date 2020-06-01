# Create network interface 1 in tier 1
resource "azurerm_network_interface" "nic1-1-rg2" {
    name                      = "nic1-1-rg2"
    location            = azurerm_resource_group.rg2.location
    resource_group_name = azurerm_resource_group.rg2.name

    ip_configuration {
        name                          = "nic1-1-rg2"
        subnet_id                     = azurerm_subnet.sb1-rg2.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-2
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link1-1-rg2" {
    network_interface_id      = azurerm_network_interface.nic1-1-rg2.id
    network_security_group_id = azurerm_network_security_group.nsg1-rg2.id
}

# Create network interface 2 in tier 1
resource "azurerm_network_interface" "nic1-2-rg2" {
    name                      = "nic1-2-rg2"
    location            = azurerm_resource_group.rg2.location
    resource_group_name = azurerm_resource_group.rg2.name

    ip_configuration {
        name                          = "nic1-2-rg2"
        subnet_id                     = azurerm_subnet.sb1-rg2.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-2
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link1-2-rg2" {
    network_interface_id      = azurerm_network_interface.nic1-2-rg2.id
    network_security_group_id = azurerm_network_security_group.nsg1-rg2.id
}

# Create network interface 3 in tier 1
resource "azurerm_network_interface" "nic1-3-rg2" {
    name                      = "nic1-3-rg2"
    location            = azurerm_resource_group.rg2.location
    resource_group_name = azurerm_resource_group.rg2.name

    ip_configuration {
        name                          = "nic1-3-rg2"
        subnet_id                     = azurerm_subnet.sb1-rg2.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-2
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link1-3-rg2" {
    network_interface_id      = azurerm_network_interface.nic1-3-rg2.id
    network_security_group_id = azurerm_network_security_group.nsg1-rg2.id
}