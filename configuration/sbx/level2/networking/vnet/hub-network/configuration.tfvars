landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "caf_level1_management"
  level               = "level2"
  key                 = "caf_level2_vnets_connectivity"
  tfstates = {
    caf_level1_management = {
      level   = "lower"
      tfstate = "caf_level1_management.tfstate"
    }
#     caf_level1_connectivity = {
#       level   = "lower"
#       tfstate = "caf_level1_connectivity.tfstate"
#     }
  }
}