
resource "azurerm_linux_virtual_machine_scale_set" "this" {
  name                = var.vmss_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  instances           = var.instances
  admin_username      = var.admin_username

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  admin_password = var.admin_password

  network_interface {
    name    = "nic"
    primary = true
    ip_configuration {
      name      = "internal"
      subnet_id = var.subnet_id
    }
  }
}
