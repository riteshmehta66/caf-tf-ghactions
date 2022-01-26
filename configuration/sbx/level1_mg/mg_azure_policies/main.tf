# removed following policy assignments from archetype_definition_banyan_app_dev.json 
#     "mhb-sbx-add-tag-pol",
#     "mhb-sbx-inherit-tag-pol"







# Declare the Terraform Module for Cloud Adoption Framework
# Enterprise-scale and provide a base configuration.
module "enterprise_scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "~> 1.0.0"

  providers = {
    azurerm              = azurerm
    azurerm.management   = azurerm.management
    azurerm.connectivity = azurerm.connectivity
  }

  # Base module configuration settings.
  root_parent_id   = data.azurerm_client_config.current.tenant_id
  root_id          = local.root_id
  root_name        = local.root_name
  default_location = local.default_location
  library_path     = "./lib"

  # Control deployment of the core landing zone hierachy.
  deploy_core_landing_zones   = false
  deploy_corp_landing_zones   = local.deploy_corp_landing_zones
  deploy_online_landing_zones = local.deploy_online_landing_zones
  deploy_sap_landing_zones    = local.deploy_sap_landing_zones

  
  create_duration_delay = {  
    azurerm_management_group      = "90s"
    azurerm_policy_definition     = "180s"
    azurerm_policy_set_definition = "180s"
    azurerm_role_definition       = "180s"
    azurerm_policy_assignment     = "90s"
    azurerm_role_assignment       = "300s"
  }

  custom_landing_zones = {

    "${local.root_id}" = {
      display_name               = "mhb-sbx-mg"
      parent_management_group_id = ""
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "mhb-sbx-rt"
        parameters     = {}
        access_control = {
          "Owner": [
            "4a19ec9a-95da-4721-a54f-ef7fb75e02c3",          # Temp Owner permission for Ritesh.Mehta@mobileheartbeat.com for Troubleshooting.
            "a5ae4c2b-7cd2-428e-b59c-79156d42a77c"           # Temp Owner permission for Naeim.Beigi@mobileheartbeat.com for Troubleshooting. 
          ]
        }
      }
    }
    "${local.root_id}-platform-sbx" = {
      display_name               = "mhb-sbx-platform-mg"
      parent_management_group_id = "${local.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-platform-sbx-con-sbx" = {
      display_name               = "mhb-sbx-platform-con-mg"
      parent_management_group_id = "${local.root_id}-platform-sbx"
      subscription_ids           = ["62d86ea5-6f86-4157-be46-57282363ba93"]
      archetype_config = {
        archetype_id   = "platform-sbx-con-sbx"
        parameters     = {}
        access_control = {
          "Contributor": [
            "0fcee476-25b4-438a-9e7e-6b9f24effa76"
          ]
        }
      }
    }
    "${local.root_id}-platform-sbx-mgmt-sbx" = {
      display_name               = "mhb-sbx-platform-mgt-mg"
      parent_management_group_id = "${local.root_id}-platform-sbx"
      subscription_ids           = ["62d86ea5-6f86-4157-be46-57282363ba93"]
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {
          "Contributor": [
            "0eb00271-50f7-4a43-a915-a83d8f837603",            
            "0fcee476-25b4-438a-9e7e-6b9f24effa76"          
          ]
        }
      }
    }
    "${local.root_id}-platform-sbx-idm-sbx" = {
      display_name               = "mhb-sbx-platform-idm-mg"
      parent_management_group_id = "${local.root_id}-platform-sbx"
      subscription_ids           = ["62d86ea5-6f86-4157-be46-57282363ba93"]
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {
          "Contributor": [
            "0fcee476-25b4-438a-9e7e-6b9f24effa76"
          ]
        }
      }
    }
    "${local.root_id}-platform-sbx-devops-sbx" = {
      display_name               = "mhb-sbx-platform-devops-mg"
      parent_management_group_id = "${local.root_id}-platform-sbx"
      subscription_ids           = ["62d86ea5-6f86-4157-be46-57282363ba93"]
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {
          "Owner": [
            "70a6b34e-8fe2-4909-8e02-1cdfab529912"
          ]
        }
      }
    }
    "${local.root_id}-lz-sbx" = {
      display_name               = "mhb-sbx-lz-mg"
      parent_management_group_id = "${local.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "lz-sbx"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-lz-sbx-byn-sbx" = {
      display_name               = "mhb-sbx-lz-byn-sbx-mg"
      parent_management_group_id = "${local.root_id}-lz-sbx"
      subscription_ids           = ["62d86ea5-6f86-4157-be46-57282363ba93"]
      archetype_config = {
        archetype_id   = "lz-sbx-byn-sbx"
        parameters     = {}
        access_control = {
          "Contributor": [            
            "0fcee476-25b4-438a-9e7e-6b9f24effa76",          
            "e7e49908-139c-4123-9126-9791396c0502",
            "dd2cb2c1-f31b-4f27-a896-4529a6983485"                                  
          ]
        }
      }
    }
    "${local.root_id}-lz-sbx-byn-dvl" = {
      display_name               = "mhb-sbx-lz-byn-dvl-mg"
      parent_management_group_id = "${local.root_id}-lz-sbx"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-sbx-sbx" = {
      display_name               = "mhb-sbx-sbx-mg"
      parent_management_group_id = "${local.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-decom-sbx" = {
      display_name               = "mhb-sbx-decom-mg"
      parent_management_group_id = "${local.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }    
  }
}