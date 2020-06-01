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

# Create network interface
resource "azurerm_network_interface" "nic2" {
    name                      = "nic2"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig2"
        subnet_id                     = azurerm_subnet.subnet2.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = azurerm_public_ip.publicIp1.id
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link2" {
    network_interface_id      = azurerm_network_interface.nic2.id
    network_security_group_id = azurerm_network_security_group.nsg2.id
}

# Create network interface
resource "azurerm_network_interface" "nic3" {
    name                      = "nic3"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig3"
        subnet_id                     = azurerm_subnet.subnet3.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3" {
    network_interface_id      = azurerm_network_interface.nic3.id
    network_security_group_id = azurerm_network_security_group.nsg3.id
}

# Create network interface
resource "azurerm_network_interface" "nic3-2" {
    name                      = "nic3-2"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig3-2"
        subnet_id                     = azurerm_subnet.subnet3.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-2" {
    network_interface_id      = azurerm_network_interface.nic3-2.id
    network_security_group_id = azurerm_network_security_group.nsg3.id
}

# Create network interface
resource "azurerm_network_interface" "nic3-3" {
    name                      = "nic3-3"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig3-3"
        subnet_id                     = azurerm_subnet.subnet3.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link3-3" {
    network_interface_id      = azurerm_network_interface.nic3-3.id
    network_security_group_id = azurerm_network_security_group.nsg3.id
}

# Create network interface
resource "azurerm_network_interface" "nic4" {
    name                      = "nic4"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig4"
        subnet_id                     = azurerm_subnet.subnet4.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link4" {
    network_interface_id      = azurerm_network_interface.nic4.id
    network_security_group_id = azurerm_network_security_group.nsg4.id
}

# Create network interface
resource "azurerm_network_interface" "nic4-2" {
    name                      = "nic4-2"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig4-2"
        subnet_id                     = azurerm_subnet.subnet4.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link4-2" {
    network_interface_id      = azurerm_network_interface.nic4-2.id
    network_security_group_id = azurerm_network_security_group.nsg4.id
}

# Create network interface
resource "azurerm_network_interface" "nic4-3" {
    name                      = "nic4-3"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig4-3"
        subnet_id                     = azurerm_subnet.subnet4.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link4-3" {
    network_interface_id      = azurerm_network_interface.nic4-3.id
    network_security_group_id = azurerm_network_security_group.nsg4.id
}

# Create network interface
resource "azurerm_network_interface" "nic5" {
    name                      = "nic5"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig5"
        subnet_id                     = azurerm_subnet.subnet5.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link5" {
    network_interface_id      = azurerm_network_interface.nic5.id
    network_security_group_id = azurerm_network_security_group.nsg5.id
}

# Create network interface
resource "azurerm_network_interface" "nic5-2" {
    name                      = "nic5-2"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig5-2"
        subnet_id                     = azurerm_subnet.subnet5.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link5-2" {
    network_interface_id      = azurerm_network_interface.nic5-2.id
    network_security_group_id = azurerm_network_security_group.nsg5.id
}

# Create network interface
resource "azurerm_network_interface" "nic6" {
    name                      = "nic6"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig6"
        subnet_id                     = azurerm_subnet.subnet6.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link6" {
    network_interface_id      = azurerm_network_interface.nic6.id
    network_security_group_id = azurerm_network_security_group.nsg6.id
}

# Create network interface
resource "azurerm_network_interface" "nic6-2" {
    name                      = "nic6-2"
    location            = azurerm_resource_group.RG1.location
    resource_group_name = azurerm_resource_group.RG1.name

    ip_configuration {
        name                          = "nicConfig6-2"
        subnet_id                     = azurerm_subnet.subnet6.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment =  var.tag
    }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "link6-2" {
    network_interface_id      = azurerm_network_interface.nic6-2.id
    network_security_group_id = azurerm_network_security_group.nsg6.id
}