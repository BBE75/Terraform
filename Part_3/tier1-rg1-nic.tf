# Create network interface 1 in tier 1
resource "azurerm_network_interface" "nic1-1-rg1" {
    name                      = "nic1-1-rg1"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name

    ip_configuration {
        name                          = "nic1-1-rg1"
        subnet_id                     = azurerm_subnet.sb1-rg1.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-1
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link1-1-rg1" {
    network_interface_id      = azurerm_network_interface.nic1-1-rg1.id
    network_security_group_id = azurerm_network_security_group.nsg1-rg1.id
}

# Create network interface 2 in tier 1
resource "azurerm_network_interface" "nic1-2-rg1" {
    name                      = "nic1-2-rg1"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name

    ip_configuration {
        name                          = "nic1-2-rg1"
        subnet_id                     = azurerm_subnet.sb1-rg1.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-1
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link1-2-rg1" {
    network_interface_id      = azurerm_network_interface.nic1-2-rg1.id
    network_security_group_id = azurerm_network_security_group.nsg1-rg1.id
}

# Create network interface 3 in tier 1
resource "azurerm_network_interface" "nic1-3-rg1" {
    name                      = "nic1-3-rg1"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name

    ip_configuration {
        name                          = "nic1-3-rg1"
        subnet_id                     = azurerm_subnet.sb1-rg1.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-1
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link1-3-rg1" {
    network_interface_id      = azurerm_network_interface.nic1-3-rg1.id
    network_security_group_id = azurerm_network_security_group.nsg1-rg1.id
}