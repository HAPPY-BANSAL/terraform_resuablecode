module "resource_group" {
    source = "../../modules/azurerm_resource_group"
    rgs = var.rgs
}

module "storage_account" {
    depends_on = [module.resource_group]
    source= "../../modules/azurerm_storage-account"
    stgs = var.stgs
}

module "virtual_network" {
    depends_on = [ module.resource_group ]
    source = "../../modules/azurerm_virtual_network"
    vnets = var.vnets
}

module "subnet" {
    depends_on = [ module.virtual_network ]
    source = "../../modules/azurerm_subnet"
    subnets = var.subnets
}