# Tier 5 loadbalancer for HTTP
resource "azurerm_lb" "lb1-rg1" {
  name                = "lb1-rg1"
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
  sku                 = "Basic"

  frontend_ip_configuration {
    name                          = "Public"
    public_ip_address_id          = azurerm_public_ip.lb1-rg1.id
  }
}

resource "azurerm_lb_rule" "lb1-rg1" {
  resource_group_name            = azurerm_resource_group.rg1.name
  loadbalancer_id                = azurerm_lb.lb1-rg1.id
  name                           = "web"
  protocol                       = "Tcp"
  frontend_port                  = "80"
  backend_port                   = "80"
  frontend_ip_configuration_name = "PrivateIPAddress"
}

resource "azurerm_lb_backend_address_pool" "lb1-rg1"{
      name                = "lb1-rg1-address_pool"
      resource_group_name = azurerm_resource_group.rg1.name
      loadbalancer_id     = azurerm_lb.lb1-rg1.id
}

resource "azurerm_lb_probe" "lb1-rg1" {
  resource_group_name = azurerm_resource_group.rg1.name
  loadbalancer_id     = azurerm_lb.lb1-rg1.id
  name                = "web"
  protocol            = "Tcp"
  port                = "80"
  interval_in_seconds = "5"
  number_of_probes    = "2"
}