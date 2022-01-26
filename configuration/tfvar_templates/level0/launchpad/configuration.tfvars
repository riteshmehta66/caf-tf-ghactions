
landingzone = {
  backend_type = "azurerm"
  level        = "level0"
  key          = "launchpad"
}


# Default region. When not set to a resource it will use that value
default_region = "region1"

regions = {
  region1 = "eastus2"
  region2 = "centralus"
}

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
# passthrough = false
# adds random chars at the end of the names produced by the provider
# random_length = 3

# Inherit_tags defines if a resource will inherit it's resource group tags

passthrough   = true // false introduces random characters at start
random_length = 0     // adds number of random characters at the end
use_slug      = false // uses resource type identifier
inherit_tags  = true


// prefix = null

//  prefix = "xyz"

launchpad_key_names = {
  azuread_app            = "caf_launchpad_level0"
  keyvault_client_secret = "aadapp-caf-launchpad-level0"
  tfstates = [
    "level0",
    "level1",
    "level2",
    "level3",
    "level4"
  ]
}
