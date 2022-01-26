
landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "caf_level2_vnets_connectivity"
  level               = "level3"
  key                 = "caf_level3_appgateway_210_connectivity"
  tfstates = {
    caf_level2_vnets_connectivity = {
      level   = "lower"
      tfstate = "caf_level2_vnets_connectivity.tfstate"
    }    
  }
}




