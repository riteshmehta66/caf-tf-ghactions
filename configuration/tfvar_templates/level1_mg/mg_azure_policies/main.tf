# removed following policy assignments from archetype_definition_banyan_app_dev.json 
#     "pqr-{{configs.environment}}-add-tag-pol",
#     "pqr-{{configs.environment}}-inherit-tag-pol"







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
      display_name               = "pqr-{{configs.environment}}-mg"
      parent_management_group_id = ""
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "pqr-{{configs.environment}}-rt"
        parameters     = {}
        access_control = {
          "Owner": [
            "4a19ec9a-95da-4721-a54f-ef7fb75e02c3",          # Temp Owner permission for Ritesh.Mehta@mobileheartbeat.com for Troubleshooting.
            "a5ae4c2b-7cd2-428e-b59c-79156d42a77c"           # Temp Owner permission for Naeim.Beigi@mobileheartbeat.com for Troubleshooting. 
          ]
        }
      }
    }
    "${local.root_id}-platform-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-platform-mg"
      parent_management_group_id = "${local.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-platform-{{configs.environment}}-con-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-platform-con-mg"
      parent_management_group_id = "${local.root_id}-platform-{{configs.environment}}"
      subscription_ids           = ["{{configs.subscriptionid_platform_con1}}"]
      archetype_config = {
        archetype_id   = "platform-{{configs.environment}}-con-{{configs.environment}}"
        parameters     = {}
        access_control = {
          "Contributor": [
            "{{configs.rbac_caf_tf_level2_builtin_role_contributor_oid1}}"
          ]
        }
      }
    }
    "${local.root_id}-platform-{{configs.environment}}-mgmt-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-platform-mgt-mg"
      parent_management_group_id = "${local.root_id}-platform-{{configs.environment}}"
      subscription_ids           = ["{{configs.subscriptionid_platform_mgt1}}"]
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {
          "Contributor": [
            "{{configs.rbac_caf_tf_level1_builtin_role_contributor_oid1}}",            
            "{{configs.rbac_caf_tf_level2_builtin_role_contributor_oid1}}"          
          ]
        }
      }
    }
    "${local.root_id}-platform-{{configs.environment}}-idm-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-platform-idm-mg"
      parent_management_group_id = "${local.root_id}-platform-{{configs.environment}}"
      subscription_ids           = ["{{configs.subscriptionid_platform_idm1}}"]
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {
          "Contributor": [
            "{{configs.rbac_caf_tf_level2_builtin_role_contributor_oid1}}"
          ]
        }
      }
    }
    "${local.root_id}-platform-{{configs.environment}}-devops-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-platform-devops-mg"
      parent_management_group_id = "${local.root_id}-platform-{{configs.environment}}"
      subscription_ids           = ["{{configs.subscriptionid_platform_cafdvops1}}"]
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {
          "Owner": [
            "{{configs.rbac_caf_tf_level0_builtin_role_owner_oid1}}"
          ]
        }
      }
    }
    "${local.root_id}-lz-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-lz-mg"
      parent_management_group_id = "${local.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "lz-{{configs.environment}}"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-lz-{{configs.environment}}-byn-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-lz-byn-{{configs.environment}}-mg"
      parent_management_group_id = "${local.root_id}-lz-{{configs.environment}}"
      subscription_ids           = ["{{configs.subscriptionid_lz_byn1}}"]
      archetype_config = {
        archetype_id   = "lz-{{configs.environment}}-byn-{{configs.environment}}"
        parameters     = {}
        access_control = {
          "Contributor": [            
            "{{configs.rbac_caf_tf_level2_builtin_role_contributor_oid1}}",          
            "{{configs.rbac_caf_tf_level3_builtin_role_contributor_oid1}}",
            "{{configs.rbac_caf_tf_level4_builtin_role_contributor_oid1}}"                                  
          ]
        }
      }
    }
    "${local.root_id}-lz-{{configs.environment}}-byn-dvl" = {
      display_name               = "pqr-{{configs.environment}}-lz-byn-dvl-mg"
      parent_management_group_id = "${local.root_id}-lz-{{configs.environment}}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-sbx-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-sbx-mg"
      parent_management_group_id = "${local.root_id}"
      subscription_ids           = []
      archetype_config = {
        archetype_id   = "default_empty"
        parameters     = {}
        access_control = {}
      }
    }
    "${local.root_id}-decom-{{configs.environment}}" = {
      display_name               = "pqr-{{configs.environment}}-decom-mg"
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