
storage_accounts = {
  level0 = {
    name                     = "cafsbxcf0pqrastdvop15e2"
    resource_group_key       = "level0"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "RAGRS"
    
    tags = {
      ## Those tags must never be changed after being set as they are used by the rover to locate the launchpad and the tfstates.
      # Only adjust the environment value at creation time
      tfstate     = "level0"
      // environment = "sandpit"
      launchpad   = "launchpad"
      ##      
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }

    // network = {
    //   bypass         = ["AzureServices","Logging","Metrics"]
    //   default_action = "Deny"
    //   ip_rules       = ["74.15.245.71"]
    //   // subnets = {
    //   //   subnet1 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_01"
    //   //   }
    //   //   subnet2 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_02"
    //   //   }
    //   // }
    // }

    // enable_system_msi    = true
    // customer_managed_key = {
    //   keyvault_key     = "storage_byok"
    //   keyvault_key_key = "launchpad_level0"
    // }
  }


  level1 = {
    name                     = "cafsbxcf1pqrastdvop15e2"
    resource_group_key       = "level1"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "RAGRS"
    tags = {
      ##
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      tfstate     = "level1"
      // environment = "sandpit"
      launchpad   = "launchpad"
      ##      
    }

    containers = {
      tfstate = {
        name = "tfstate"
      }
    }

    // enable_system_msi    = true
    // customer_managed_key = {
    //   keyvault_key     = "storage_byok"
    //   keyvault_key_key = "launchpad_level1"
    // }

    // network = {
    //   bypass         = ["AzureServices"]
    //   default_action = "Deny"
    //   ip_rules       = ["74.15.245.71"]
    //   // subnets = {
    //   //   subnet1 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_01"
    //   //   }
    //   //   subnet2 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_02"
    //   //   }
    //   // }
    // }
  }

  level2 = {
    name                     = "cafsbxcf2pqrastdvop15e2"
    resource_group_key       = "level2"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "RAGRS"
    tags = {
      ##
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      tfstate     = "level2"
      // environment = "sandpit"
      launchpad   = "launchpad"
      ##      
    }

    containers = {
      tfstate = {
        name = "tfstate"
      }
    }

    // enable_system_msi    = true
    // customer_managed_key = {
    //   keyvault_key     = "storage_byok"
    //   keyvault_key_key = "launchpad_level2"
    // }

    // network = {
    //   bypass         = ["AzureServices"]
    //   default_action = "Deny"
    //   ip_rules       = ["74.15.245.71"]
    //   // subnets = {
    //   //   subnet1 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_01"
    //   //   }
    //   //   subnet2 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_02"
    //   //   }
    //   // }
    // }
  }

  level3 = {
    name                     = "cafsbxcf3pqrastdvop15e2"
    resource_group_key       = "level3"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "RAGRS"
    tags = {
      ##
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      tfstate     = "level3"
      // environment = "sandpit"
      launchpad   = "launchpad"
      ##      
    }

    containers = {
      tfstate = {
        name = "tfstate"
      }
    }

    // enable_system_msi    = true
    // customer_managed_key = {
    //   keyvault_key     = "storage_byok"
    //   keyvault_key_key = "launchpad_level3"
    // }

    // network = {
    //   bypass         = ["AzureServices"]
    //   default_action = "Deny"
    //   ip_rules       = ["74.15.245.71"]
    //   // subnets = {
    //   //   subnet1 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_01"
    //   //   }
    //   //   subnet2 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_02"
    //   //   }
    //   // }
    // }
  }

  level4 = {
    name                     = "cafsbxcf4pqrastdvop15e2"
    resource_group_key       = "level4"
    account_kind             = "BlobStorage"
    account_tier             = "Standard"
    account_replication_type = "RAGRS"
    
    tags = {
      ##
      # Those tags must never be changed while set as they are used by the rover to locate the launchpad and the tfstates.
      tfstate     = "level4"
      // environment = "sandpit"
      launchpad   = "launchpad"
      ##      
    }

    containers = {
      tfstate = {
        name = "tfstate"
        // container_delete_retention_policy = {
        //   days  =   "30"
        // }
      }
      // container_delete_retention_policy = {
      //   days  =   "30"
      // }

    }

    // enable_system_msi    = true
    // customer_managed_key = {
    //   keyvault_key     = "storage_byok"
    //   keyvault_key_key = "launchpad_level4"
    // }

    // network = {
    //   bypass         = ["AzureServices"]
    //   default_action = "Deny"
    //   ip_rules       = ["74.15.245.71"]
    //   // subnets = {
    //   //   subnet1 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_01"
    //   //   }
    //   //   subnet2 = {
    //   //       lz_key                  = "caf_networking_vnets_vx1"
    //   //       vnet_key                = "eus_vnet_01"
    //   //       subnet_key              = "eus_vnet_01_snet_02"
    //   //   }
    //   // }
    // }
  }
}