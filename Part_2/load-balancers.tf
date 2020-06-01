# Tier 5 loadbalancer for HTTP
resource "azurerm_lb" "lb4" {
  name                = "lb4"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                          = "PrivateIPAddress"
    subnet_id                     = azurerm_subnet.subnet4.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "192.168.4.100"
  }
}

resource "azurerm_lb_rule" "lb4" {
  resource_group_name            = azurerm_resource_group.RG1.name
  loadbalancer_id                = azurerm_lb.lb4.id
  name                           = "web_esgi"
  protocol                       = "Tcp"
  frontend_port                  = "80"
  backend_port                   = "80"
  frontend_ip_configuration_name = "PrivateIPAddress"
}

resource "azurerm_lb_backend_address_pool" "lb4"{
      name                = "lb4-address_pool"
      resource_group_name = azurerm_resource_group.RG1.name
      loadbalancer_id     = azurerm_lb.lb4.id
}

resource "azurerm_lb_probe" "lb4" {
  resource_group_name = azurerm_resource_group.RG1.name
  loadbalancer_id     = azurerm_lb.lb4.id
  name                = "web_esgi"
  protocol            = "Tcp"
  port                = "80"
  interval_in_seconds = "5"
  number_of_probes    = "2"
}


# Tier 5 loadbalancer for mysql

resource "azurerm_lb" "lb5" {
  name                = "lb5"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name                          = "PrivateIPAddress"
    subnet_id                     = azurerm_subnet.subnet4.id
    private_ip_address_allocation = "Static"
    private_ip_address            = "192.168.5.100"
  }
}

resource "azurerm_lb_rule" "lb5" {
  resource_group_name            = azurerm_resource_group.RG1.name
  loadbalancer_id                = azurerm_lb.lb5.id
  name                           = "mysql_esgi"
  protocol                       = "Tcp"
  frontend_port                  = "3306"
  backend_port                   = "3306"
  frontend_ip_configuration_name = "PrivateIPAddress"
}

resource "azurerm_lb_backend_address_pool" "lb5"{
      name                = "lb5-address_pool"
      resource_group_name = azurerm_resource_group.RG1.name
      loadbalancer_id     = azurerm_lb.lb5.id
}

resource "azurerm_lb_probe" "lb5" {
  resource_group_name = azurerm_resource_group.RG1.name
  loadbalancer_id     = azurerm_lb.lb5.id
  name                = "mysql_esgi"
  protocol            = "Tcp"
  port                = "3306"
  interval_in_seconds = "5"
  number_of_probes    = "2"
}
