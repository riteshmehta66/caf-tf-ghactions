
vnets = {
  eus2_vnet_01 = {
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
    vnet = {
      name          = "mgt-{{configs.environment}}-00-ss-00-00-a-vnet-mgt-e2"
      address_space = ["{{configs.mgt_eus2_vnet_01_cidr}}"]      
    }
    specialsubnets = {}

    subnets = {

      eus2_vnet_01_snet_01 = {
        name                                           = "mgt-{{configs.environment}}-00-ss-00-00-a-snet-pe1-e2"
        cidr                                           = ["{{configs.mgt_eus2_vnet_01_snet_01_cidr}}"]
        // nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]
      }

      eus2_vnet_01_snet_02 = {
        name                                           = "mgt-{{configs.environment}}-00-ss-00-00-a-snet-fortesting1-e2"
        cidr                                           = ["{{configs.mgt_eus2_vnet_01_snet_02_cidr}}"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]
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
      name          = "mgt-{{configs.environment}}-00-ss-00-00-a-vnet-mgt-c1"
      address_space = ["{{configs.mgt_cus_vnet_01_cidr}}"]
      // dns_servers         = ["10.127.11.36", "10.127.11.37"] 
    }
    specialsubnets = {}

    subnets = {

      cus_vnet_01_snet_01 = {
        name                                           = "mgt-{{configs.environment}}-00-ss-00-00-a-snet-pe1-c1"
        cidr                                           = ["{{configs.mgt_cus_vnet_01_snet_01_cidr}}"]
        // nsg_key                                        = "cus_nsg_default"
        route_table_key = "cus_rt_01"        
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]        
      }
      # Delete below subnet, created only for testing 
      cus_vnet_01_snet_02 = {
        name            = "mgt-{{configs.environment}}-00-ss-00-00-a-snet-fortesting1-c1"
        cidr            = ["{{configs.mgt_cus_vnet_01_snet_02_cidr}}"]
        nsg_key         = "cus_nsg_default"
        route_table_key = "cus_rt_01"
        service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.Storage"]   
        
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
