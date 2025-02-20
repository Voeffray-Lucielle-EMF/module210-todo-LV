
resource "azurerm_service_plan" "service_plan" {
  name = "servicePlan${var.ressource-suffix}"
  location = var.location
  resource_group_name = var.RG
  sku_name = var.webapp_size.size
  os_type = "Linux"
}

resource "azurerm_linux_web_app" "web-app" {
  name                = "webApp${var.ressource-suffix}-backend"
  location            = var.location
  resource_group_name = var.RG
  service_plan_id     = azurerm_service_plan.service_plan.id

  site_config {
    application_stack {
      docker_image_name   = var.image.name
      docker_registry_url = "${var.image.URLprefix}${var.image.url}"
      docker_registry_password = var.image.secret
      docker_registry_username = var.image.mail
    }
    always_on = false
  }

  app_settings = {
    "DB_HOST" = var.DB.DB_HOST
    "DB_USER" = var.DB.DB_USER
    "DB_PASS" = var.DB.DB_PASS
    "DB_PORT" = var.DB.DB_PORT
    "DB_NAME" = var.DB.DB_NAME
  }

  tags = var.tags
}
