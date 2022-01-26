landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "caf_level2_vnets_connectivity"
  level               = "level3"
  key                 = "caf_level3_frontdoor_keyvault_connectivity"
  tfstates = {
    caf_level2_vnets_connectivity = {
      level   = "lower"
      tfstate = "caf_level2_vnets_connectivity.tfstate"
    }
#     caf_level1_connectivity = {
#       level   = "lower"
#       tfstate = "caf_level1_connectivity.tfstate"
#     }
  }
}