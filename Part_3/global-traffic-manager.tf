resource "azurerm_traffic_manager_profile" "traffic_manager" {
  name                = "traffic-manager"
  resource_group_name = azurerm_resource_group.rg1.name

  traffic_routing_method = "Weighted"

  dns_config {
    relative_name = "Part_3"
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

resource "azurerm_traffic_manager_endpoint" "traffic_manager" {
  name                = "traffic_manager"
  resource_group_name = azurerm_resource_group.rg1.name
  profile_name        = azurerm_traffic_manager_profile.traffic_manager.name
  target              = "esgi-ben-part3.westeurope.cloudapp.azure.com"
  type                = "externalEndpoints"
  weight              = 100
}