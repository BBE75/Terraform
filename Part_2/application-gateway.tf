# Create App Service Plans
resource "azurerm_app_service_plan" "app-service-plan" {
  name                = "app-service-plan"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name

  sku {
    tier = "Free"
    size = "F1"
  }
}

# Create App Services
resource "azurerm_app_service" "app-service" {
  name                = "app-service"
  location            = azurerm_resource_group.RG1.location
  resource_group_name = azurerm_resource_group.RG1.name
  app_service_plan_id = azurerm_app_service_plan.app-service-plan.id
}

# Create Application Gateways
resource "azurerm_application_gateway" "application-gateway" {
  name                = "application-gateway"
  resource_group_name = azurerm_resource_group.RG1.name
  location            = azurerm_resource_group.RG1.location

  zones = [2]

  sku {
    name     = "WAF_Medium"
    tier     = "WAF"
    capacity = 2
  }

  waf_configuration {
    enabled          = "true"
    firewall_mode    = "Detection"
    rule_set_type    = "OWASP"
    rule_set_version = "3.0"
  }

  gateway_ip_configuration {
    name      = "subnet"
    subnet_id = "${azurerm_virtual_network.virtualNetwork1.id}/subnets/${azurerm_subnet.subnet1.name}"
  }

  frontend_port {
    name = "http"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "frontend"
    public_ip_address_id = azurerm_public_ip.publicIp1.id
  }

  backend_address_pool {
    name        = "AppService"
    fqdns = ["${azurerm_app_service.app-service.name}.azurewebsites.net"]
  }

  http_listener {
    name                           = "http"
    frontend_ip_configuration_name = "frontend"
    frontend_port_name             = "http"
    protocol                       = "Http"
  }

  probe {
    name                = "probe"
    protocol            = "http"
    path                = "/"
    host                = "${azurerm_app_service.app-service.name}.azurewebsites.net"
    interval            = "30"
    timeout             = "30"
    unhealthy_threshold = "3"
  }

  backend_http_settings {
    name                  = "http"
    cookie_based_affinity = "Disabled"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 1
    probe_name            = "probe"
  }

  request_routing_rule {
    name                       = "http"
    rule_type                  = "Basic"
    http_listener_name         = "http"
    backend_address_pool_name  = "AppService"
    backend_http_settings_name = "http"
  }
}