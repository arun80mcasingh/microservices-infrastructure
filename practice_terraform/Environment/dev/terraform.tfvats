rg-details = {
  rg1 = {
    name     = "arunrg1"
    location = "centralindia"
  }
}

vnet-details = {
  vnet1 = {
    name                = "arun-vnet"
    resource_group_name = "arunrg1"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
    subnets = {
      subnet1 = {
        name             = "frontsubnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      subnet2 = {
        name             = "backsubnet"
        address_prefixes = ["10.0.2.0/24"]
      }
      subnet3 = {
        name             = "AzureBastionSubnet"
        address_prefixes = ["10.0.3.0/24"]
      }
    }
  }
}


# subnet-details = {
#   subnet1 = {
#     name                 = "frontsubnet"
#     resource_group_name  = "arunrg1"
#     virtual_network_name = "arun-vnet"
#     address_prefixes     = ["10.0.1.0/24"]
#   }
#   subnet2 = {
#     name                 = "backsubnet"
#     resource_group_name  = "arunrg1"
#     virtual_network_name = "arun-vnet"
#     address_prefixes     = ["10.0.2.0/24"]
#   }
#   subnet3 = {
#     name                 = "AzureBastionSubnet"
#     resource_group_name  = "arunrg1"
#     virtual_network_name = "arun-vnet"
#     address_prefixes     = ["10.0.3.0/24"]
#   }
# }

pip-details = {
  pip1 = {
    name                = "arunpip"
    resource_group_name = "arunrg1"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pip2 = {
     name                = "frontpip"
     resource_group_name = "arunrg1"
     location            = "centralindia"
    allocation_method   = "Static"
   }
  pip3 = {
    name                = "backpip"
    resource_group_name = "arunrg1"
    location            = "centralindia"
    allocation_method   = "Static"
  }

}
bastion-details = {
  bastion1 = {
    name                = "bastionarun"
    location            = "centralindia"
    resource_group_name = "arunrg1"
    vnet                = "bastion-vnet"
    subname             = "AzureBastionSubnet"
    pip_name            = "bastionpip"
    allocation_method   = "Static"
  }
}
nic-details = {
  nic1 = {
    name                = "nic-arun"
    location            = "centralindia"
    resource_group_name = "arunrg1"
    vnet                = "bastion-vnet"
    subname             = "frontsubnet"
    pip_name           = "frontpip"
  }
  nic2 = {
    name                = "nic-arun1"
    location            = "centralindia"
    resource_group_name = "arunrg1"
    vnet                = "bastion-vnet"
    subname             = "backsubnet"
    pip_name           = "backpip"
  }
}
nsg-details = {
  nsg1 = {
    name                = "nsg-arun1"
    location            = "centralindia"
    resource_group_name = "bastionrg1"
    vnet                = "bastion-vnet"
    subname             = "frontsubnet"
    nicname             = "nic-arun"
  }
  nsg2 = {
    name                = "nsg-arun2"
    location            = "centralindia"
    resource_group_name = "bastionrg1"
    vnet                = "bastion-vnet"
    subname             = "backsubnet"
    nicname             = "nic-arun1"
  }
}
vm-details = {
  vm1 = {
    name                = "frontendvm1"
    resource_group_name = "arunrg1"
    location            = "centralindia"
    vnet                = "arun-vnet"
    subname             = "frontsubnet"
    nicname             = "nic-arun"
    pip_name           = "frontpip"
    admin_username      = "adminarun"
    admin_password      = "adminuser@12345"
    caching             = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher          = "Canonical"
    offer              = "0001-com-ubuntu-server-jammy"
    sku                = "22_04-lts"
    version           = "latest"
  }
  vm2 = {
    name                = "backvm2"
    resource_group_name = "bastionrg1"
    location            = "centralindia"
    vnet                = "arun-vnet"
    nicname             = "nic-arun1"
    subname             = "backsubnet"
    pip_name           = "backpip"
    admin_username      = "adminarun1"
    admin_password      = "adminuser@12345"
    caching             = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher          = "Canonical"
    offer              = "0001-com-ubuntu-server-focal"
    sku                = "20_04-lts"
    version           = "latest"
  }
}
keyvault-details = {
  keyvault1 = {
    name                        = "landingzonevault12"
    resource_group_name         = "arunrg1"
    location                    = "centralindia"
    enabled_for_disk_encryption = true
    soft_delete_retention_days  = 7
    purge_protection_enabled    = false
  }
}
acr-details = {
  acr1 = {
    name                = "bestacr12345"
    resource_group_name = "arunrg1"
    location            = "australiacentral"
    sku                 = "Premium"
    admin_enabled       = false
    Environment         = "PROD"
  }
}
aks-details = {
  aks1 = {
    name                = "team8910devaks"
    location            ="australiacentral"
    resource_group_name = "arunrg1"
    dns_prefix          = "aks-1"
    pool_name           = "team6node"
    node_count          = 1
    vm_size             = "standard_a2_v2"
    Environment         = "development"
  }
}
# loadblacer-details = {
#   lb1 = {
#     name                = "myloadbalancer"
#     resource_group_name = "arunrg1"
#     location            = "centralindia"
#     pip_name            = "loadblancerpip"
#     pool_name           = "mybackendpool"
#   }
# }

sqlserver_details = {
  sqlserver1 = {
    name                         = "arunsqlserver123"
    resource_group_name          = "arunrg1"
    location                     = "centralindia"
    administrator_login          = "sqladminuser"
    administrator_login_password = "SqlAdmin@12345"
    minimum_tls_version          = "1.2"
    version                      = "12.0"
    database_name                = "arunsqldb"
    max_size_gb                  = 10
  }
}