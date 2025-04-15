
resource "azurerm_application_gateway" "this" {
  name                = var.app_gateway_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }

  gateway_ip_configuration {
    name      = "gateway-ip-configuration"
    subnet_id = var.subnet_id
  }

  frontend_port {
    name = "frontendPort"
    port = 80
  }

  frontend_ip_configuration {
    name                 = "frontendIP"
    subnet_id            = var.subnet_id
    private_ip_address   = var.private_ip_address
    private_ip_address_allocation = "Static"
  }
}
