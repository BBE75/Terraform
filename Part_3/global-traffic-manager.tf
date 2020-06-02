resource "azurerm_traffic_manager_profile" "traffic_manager" {
  name                = "traffic-manager"
  resource_group_name = azurerm_resource_group.rg1.name

  traffic_routing_method = "Weighted"

  dns_config {
    relative_name = "esgi-ben-part3"
    ttl           = 100
  }

  monitor_config {
    protocol                     = "http"
    port                         = 80
    path                         = "/"
    interval_in_seconds          = 30
    timeout_in_seconds           = 9
    tolerated_number_of_failures = 3
  }

  tags = {
    environment = var.tag-1
  }
}

resource "azurerm_traffic_manager_endpoint" "traffic_manager_main" {
  name                = "traffic_manager_main"
  resource_group_name = azurerm_resource_group.rg1.name
  profile_name        = azurerm_traffic_manager_profile.traffic_manager.name
  target              = "esgi-ben-part3-rg1.westeurope.cloudapp.azure.com"
  type                = "externalEndpoints"
  weight              = 100
}

resource "azurerm_traffic_manager_endpoint" "traffic_manager_second" {
  name                = "traffic_manager_second"
  resource_group_name = azurerm_resource_group.rg1.name
  profile_name        = azurerm_traffic_manager_profile.traffic_manager.name
  target              = "esgi-ben-part3-rg2.westeurope.cloudapp.azure.com"
  type                = "externalEndpoints"
  weight              = 150
}