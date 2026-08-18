module "azurerm_resource_group" {
  source         = "../../modules/resourcegroup"
  resource_group = var.resource_group
}

module "azurerm_virtual_network" {
  source     = "../../modules/virtualnetwork"
  vnets      = var.vnets
  depends_on = [module.azurerm_resource_group]
}