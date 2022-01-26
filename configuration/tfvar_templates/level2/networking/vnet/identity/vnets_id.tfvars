
vnets = {
  eus2_vnet_01 = {
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
    vnet = {
      name          = "idm-{{configs.environment}}-00-idm-00-mhb-a-vnet-00-e2"
      address_space = ["{{configs.idm_eus2_vnet_01_cidr}}"]      
    }
    specialsubnets = {}

    subnets = {

      eus2_vnet_01_snet_01 = {
        name                                           = "idm-{{configs.environment}}-00-idm-00-mhb-a-snet-ad1-e2"
        cidr                                           = ["{{configs.idm_eus2_vnet_01_snet_01_cidr}}"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]
      }
      
    }

    diagnostic_profiles = {
      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "networking_all"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }     
    }    
  }

  cus_vnet_01 = {
    resource_group_key = "cus_vnet_rg_01"
    region             = "region2"
    vnet = {
      name          = "idm-{{configs.environment}}-00-idm-00-mhb-a-vnet-00-c1"
      address_space = ["{{configs.idm_cus_vnet_01_cidr}}"]      
    }
    specialsubnets = {}

    subnets = {

      cus_vnet_01_snet_01 = {
        name                                           = "idm-{{configs.environment}}-00-idm-00-mhb-a-snet-ad1-c1"
        cidr                                           = ["{{configs.idm_cus_vnet_01_snet_01_cidr}}"]
        nsg_key                                        = "cus_nsg_default"
        route_table_key = "cus_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]        
      }
    }

    diagnostic_profiles = {
      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "networking_all"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }    
  }
}
