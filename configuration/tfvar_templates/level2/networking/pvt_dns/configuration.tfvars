landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "caf_level1_management"
  level               = "level2"
  key                 = "caf_level2_private_dns_connectivity"
  tfstates = {
    caf_level1_management = {
      level   = "lower"
      tfstate = "caf_level1_management.tfstate"
    }
    // caf_foundations_vx1 = {
    //   level   = "lower"
    //   tfstate = "caf_foundations_vx1.tfstate"
    // }    
    caf_level2_vnets_management = {
      level   = "current"
      tfstate = "caf_level2_vnets_management.tfstate"
    }
    caf_level2_vnets_identity = {
      level   = "current"
      tfstate = "caf_level2_vnets_identity.tfstate"
    }
    caf_level2_vnets_connectivity = {
      level   = "current"
      tfstate = "caf_level2_vnets_connectivity.tfstate"
    }
    caf_level2_vnets_byn_lz = {
      level   = "current"
      tfstate = "caf_level2_vnets_byn_lz.tfstate"
    }
  }
}
