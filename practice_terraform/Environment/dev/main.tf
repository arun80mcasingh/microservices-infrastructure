module "rg" {
  source = "../../module/rg"
  rg     = var.rg-details
}

module "vnet" {
  source     = "../../module/vnet"
  vnet       = var.vnet-details
  depends_on = [module.rg]
}
# module "subnet" {
#   source     = "../../module/SUBNET"
#   subnet     = var.subnet-details
#   depends_on = [module.vnet, module.rg]
# }
module "pip" {
  source     = "../../module/pip"
  pip        = var.pip-details
  depends_on = [module.rg]
}
module "bastion" {
  source     = "../../module/bastion"
  bastion    = var.bastion-details
  depends_on = [module.rg, module.vnet, module.pip]

}
module "nic" {
  source     = "../../module/nic"
  nic        = var.nic-details
  depends_on = [module.rg, module.vnet]
}
module "nsg" {
  source     = "../../module/nsg"
  nsg        = var.nsg-details
  depends_on = [module.rg, module.nic]
  
}
 module "vm_linux" {
  source     = "../../module/vm"
  vm_linux   = var.vm-details
  depends_on = [module.nic]

}
module "keyvault" {
  source     = "../../module/keyvault"
  keyvaults  = var.keyvault-details
  depends_on = [module.rg]
}
module "acr" {
  source     = "../../module/acr"
  acr        = var.acr-details
  depends_on = [module.rg]  
}
module "aks" {
  source     = "../../module/aks"
  aks        = var.aks-details
  depends_on = [module.rg, module.acr]
  
}
#module "loadblacer" {
 # source = "../../module/Azure_LB"
  #loadblacer = var.loadblacer-details
  #depends_on = [module.pip, module.nic, module.vm_linux]
#}
module "azure_server_database" {
  source = "../../module/azure_sql_server"
  sql_server = var.sqlserver_details
   depends_on = [module.rg]
}