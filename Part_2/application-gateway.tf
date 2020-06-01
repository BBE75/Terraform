# Create Application Gateways
resource "azurerm_application_gateway" "application-gateway" {
  name                = "application-gateway"
  resource_group_name = azurerm_resource_group.RG1.name
  location            = azurerm_resource_group.RG1.location

  zones = [2]

  enable_http2 = "true"
  autoscale_configuration{
    min_capacity = 0
    max_capacity = 10
  }

  sku {
    name     = "Standard_v2"
    tier     = "Standard_V2"
  }

  gateway_ip_configuration {
    name      = "appGatewayIpConfig"
    subnet_id = "${azurerm_virtual_network.virtualNetwork1.id}/subnets/${azurerm_subnet.subnet1.name}"
  }

  frontend_port {
    name = "port_80"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "frontend"
    public_ip_address_id = azurerm_public_ip.publicIp1.id
  }

  backend_address_pool {
    name         = "web-server"
    ip_addresses = [azurerm_network_interface.nic3.private_ip_address,azurerm_network_interface.nic3-2.private_ip_address,azurerm_network_interface.nic3-3.private_ip_address]
  }

  http_listener {
    name                           = "http"
    frontend_ip_configuration_name = "frontend"
    frontend_port_name             = "port_80"
    protocol                       = "Http"
  }

  backend_http_settings {
    name                  = "http"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 20
  }

  request_routing_rule {
    name                       = "http"
    rule_type                  = "Basic"
    http_listener_name         = "http"
    backend_address_pool_name  = "web-server"
    backend_http_settings_name = "http"
  }
}