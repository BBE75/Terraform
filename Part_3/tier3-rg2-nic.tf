# Create network interface 1 in tier 3
resource "azurerm_network_interface" "nic3-1-rg2" {
    name                      = "nic3-1-rg2"
    location            = azurerm_resource_group.rg2.location
    resource_group_name = azurerm_resource_group.rg2.name

    ip_configuration {
        name                          = "nic3-1-rg2"
        subnet_id                     = azurerm_subnet.sb3-rg2.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-2
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-1-rg2" {
    network_interface_id      = azurerm_network_interface.nic3-1-rg2.id
    network_security_group_id = azurerm_network_security_group.nsg3-rg2.id
}

# Create network interface 2 in tier 3
resource "azurerm_network_interface" "nic3-2-rg2" {
    name                      = "nic3-2-rg2"
    location            = azurerm_resource_group.rg2.location
    resource_group_name = azurerm_resource_group.rg2.name

    ip_configuration {
        name                          = "nic3-2-rg2"
        subnet_id                     = azurerm_subnet.sb3-rg2.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-2
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-2-rg2" {
    network_interface_id      = azurerm_network_interface.nic3-2-rg2.id
    network_security_group_id = azurerm_network_security_group.nsg3-rg2.id
}

# Create network interface 3 in tier 3
resource "azurerm_network_interface" "nic3-3-rg2" {
    name                      = "nic3-3-rg2"
    location            = azurerm_resource_group.rg2.location
    resource_group_name = azurerm_resource_group.rg2.name

    ip_configuration {
        name                          = "nic3-3-rg2"
        subnet_id                     = azurerm_subnet.sb3-rg2.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-2
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-3-rg2" {
    network_interface_id      = azurerm_network_interface.nic3-3-rg2.id
    network_security_group_id = azurerm_network_security_group.nsg3-rg2.id
}