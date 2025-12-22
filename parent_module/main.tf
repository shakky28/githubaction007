module "sg_rg" {
  source = "../child_module/Resource_group"
   rgs = var.rgs
}

module "sg_stg" {
    depends_on = [ module.sg_rg ]
    source = "../child_module/Storage_account"
    stgs = var.stgs
  
}

module "sg_vnets" {
  source = "../child_module/Vnet"
  vnets = var.vnets
  depends_on = [ module.sg_rg ]
  
}

module "sg_subnet" {
  source = "../child_module/Subnet"
  subnets = var.subnets
  depends_on = [ module.sg_vnets ]
}

module "sg_vm" {
  source = "../child_module/VMs"
  vms = var.vms
  nic_ids = module.nic.nic_ids
  depends_on = [ module.sg_subnet ]
  
}

# module "sg_pip" {
#   source = "../child_module/Public_IP"
#   public_ip = var.public_ips
#   depends_on = [ module.sg_rg ]
  
# }

# module "sg_nsg" {
#   source = "../child_module/NSG"
#   nsgs = var.nsgs
#   depends_on = [ module.sg_rg ]
  
# }

module "nic" {
  source = "../child_module/NIC"
  nics = var.nics
  subnet_ids = module.sg_subnet.subnet_ids
  # depends_on = [ module.sg_rg , module.sg_vnets , module.sg_subnet , module.sg_pip ]
  
}

# module "sg_kv" {
#   source = "../child_module/KeyVault"
#   depends_on = [ module.sg_rg ]
  
# }

# module "sg_lb" {
#   source = "../child_module/LoadBalancer"
#   LBs = var.lbs
#   depends_on = [ module.sg_rg , module.sg_pip ]
# }

# module "sg_dbserver" {
#   source = "../child_module/db_server"
#   depends_on = [ module.sg_rg ]
  
# }

# module "sg_db" {
#   source = "../child_module/databases"
#   depends_on = [ module.sg_dbserver ]
  
# }

# module "sg_log" {
#   source = "../child_module/LogAnalyticsWorkspace"
#   depends_on = [ module.sg_rg ]
  
# }