
vnets = {
  eus2_vnet_01 = {
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
    vnet = {
      name          = "idm-sbx-00-idm-00-pqr-a-vnet-00-e2"
      address_space = ["10.136.68.0/23"]      
    }
    specialsubnets = {}

    subnets = {

      eus2_vnet_01_snet_01 = {
        name                                           = "idm-sbx-00-idm-00-pqr-a-snet-ad1-e2"
        cidr                                           = ["10.136.68.0/26"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]
      }
      
    }

    // diagnostic_profiles = {
      
    //   diagnostics_log_analytic = {
    //     name             = "diagnostics-loganalytics"
    //     definition_key   = "networking_all"
    //     destination_type = "log_analytics"
    //     destination_key  = "eus2_logs"
    //   }     
    // }    
  }

  cus_vnet_01 = {
    resource_group_key = "cus_vnet_rg_01"
    region             = "region2"
    vnet = {
      name          = "idm-sbx-00-idm-00-pqr-a-vnet-00-c1"
      address_space = ["10.140.68.0/23"]      
    }
    specialsubnets = {}

    subnets = {

      cus_vnet_01_snet_01 = {
        name                                           = "idm-sbx-00-idm-00-pqr-a-snet-ad1-c1"
        cidr                                           = ["10.140.68.0/26"]
        nsg_key                                        = "cus_nsg_default"
        route_table_key = "cus_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]        
      }
    }

    // diagnostic_profiles = {
      
    //   diagnostics_log_analytic = {
    //     name             = "diagnostics-loganalytics"
    //     definition_key   = "networking_all"
    //     destination_type = "log_analytics"
    //     destination_key  = "eus2_logs"
    //   }      
    // }    
  }
}