# Create network interface 1 in tier 3
resource "azurerm_network_interface" "nic3-1-rg1" {
    name                      = "nic3-1-rg1"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name

    ip_configuration {
        name                          = "nic3-1-rg1"
        subnet_id                     = azurerm_subnet.sb3-rg1.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-1
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-1-rg1" {
    network_interface_id      = azurerm_network_interface.nic3-1-rg1.id
    network_security_group_id = azurerm_network_security_group.nsg3-rg1.id
}

# Create network interface 2 in tier 3
resource "azurerm_network_interface" "nic3-2-rg1" {
    name                      = "nic3-2-rg1"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name

    ip_configuration {
        name                          = "nic3-2-rg1"
        subnet_id                     = azurerm_subnet.sb3-rg1.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-1
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-2-rg1" {
    network_interface_id      = azurerm_network_interface.nic3-2-rg1.id
    network_security_group_id = azurerm_network_security_group.nsg3-rg1.id
}

# Create network interface 3 in tier 3
resource "azurerm_network_interface" "nic3-3-rg1" {
    name                      = "nic3-3-rg1"
    location            = azurerm_resource_group.rg1.location
    resource_group_name = azurerm_resource_group.rg1.name

    ip_configuration {
        name                          = "nic3-3-rg1"
        subnet_id                     = azurerm_subnet.sb3-rg1.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag-1
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-3-rg1" {
    network_interface_id      = azurerm_network_interface.nic3-3-rg1.id
    network_security_group_id = azurerm_network_security_group.nsg3-rg1.id
}