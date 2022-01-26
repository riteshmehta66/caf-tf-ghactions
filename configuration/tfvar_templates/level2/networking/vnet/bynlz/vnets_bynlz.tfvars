
vnets = {
  eus2_vnet_01 = {
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
    vnet = {
      name          = "byn-{{configs.environment}}-00-ss-00-00-a-vnet-spk1-e2"
      address_space = ["{{configs.byn_eus2_vnet_01_cidr1}}", "{{configs.byn_eus2_vnet_01_cidr2}}"]     
    }
    specialsubnets = {}

    subnets = {

      eus2_vnet_01_snet_01 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-aks-blue-e2"
        cidr                                           = ["{{configs.byn_eus2_vnet_01_snet_01_cidr}}"]
        nsg_key                                        = "eus2_nsg_aks"
        route_table_key = "eus2_rt_01"
        // enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }

      eus2_vnet_01_snet_02 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-aks-green-e2"
        cidr                                           = ["{{configs.byn_eus2_vnet_01_snet_02_cidr}}"]
        nsg_key                                        = "eus2_nsg_aks"
        route_table_key = "eus2_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
        
        // delegation = {              ## For testing of Function App
        //   name               = "serverFarms"
        //   service_delegation = "Microsoft.Web/serverFarms"      
        // }
      }

      eus2_vnet_01_snet_03 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-aks-pvtep-e2"
        cidr                                           = ["{{configs.byn_eus2_vnet_01_snet_03_cidr}}"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
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

  eus2_vnet_02 = {
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
    vnet = {
      name          = "byn-{{configs.environment}}-00-ss-00-00-a-vnet-spk2-e2"
      address_space = ["{{configs.byn_eus2_vnet_02_cidr}}"]      
    }
    specialsubnets = {}

    subnets = {

      eus2_vnet_02_snet_01 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-pe-e2"
        cidr                                           = ["{{configs.byn_eus2_vnet_02_snet_01_cidr}}"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }

      eus2_vnet_02_snet_02 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-iaas-e2"
        cidr                                           = ["{{configs.byn_eus2_vnet_02_snet_02_cidr}}"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
        // delegation = {
        //   name               = "serverFarms"
        //   service_delegation = "Microsoft.Web/serverFarms"      
        // }
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
  


  ####################################
  ###### Central US
  ####################################

  cus_vnet_01 = {
    resource_group_key = "cus_vnet_rg_01"
    region             = "region2"
    vnet = {
      name          = "byn-{{configs.environment}}-00-ss-00-00-a-vnet-spk1-c1"
      address_space = ["{{configs.byn_cus_vnet_01_cidr1}}", "{{configs.byn_cus_vnet_01_cidr2}}"]      
    }

    specialsubnets = {}

    subnets = {

      eus2_vnet_01_snet_01 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-aks-blue-c1"
        cidr                                           = ["{{configs.byn_cus_vnet_01_snet_01_cidr}}"]
        nsg_key                                        = "cus_nsg_aks"
        route_table_key = "cus_rt_01"
        // enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }

      eus2_vnet_01_snet_02 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-aks-green-c1"
        cidr                                           = ["{{configs.byn_cus_vnet_01_snet_02_cidr}}"]
        nsg_key                                        = "cus_nsg_aks"
        route_table_key = "cus_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
        
        // delegation = {              ## For testing of Function App
        //   name               = "serverFarms"
        //   service_delegation = "Microsoft.Web/serverFarms"      
        // }
      }

      eus2_vnet_01_snet_03 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-aks-pvtep-c1"
        cidr                                           = ["{{configs.byn_cus_vnet_01_snet_03_cidr}}"]
        nsg_key                                     = "cus_nsg_default"
        route_table_key = "cus_rt_01"
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
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

  cus_vnet_02 = {
    resource_group_key = "cus_vnet_rg_01"
    region             = "region2"
    vnet = {
      name          = "byn-{{configs.environment}}-00-ss-00-00-a-vnet-spk2-c1"
      address_space = ["{{configs.byn_cus_vnet_02_cidr}}"]      
    }

    specialsubnets = {}

    subnets = {

      cus_vnet_02_snet_01 = {
        name                                           = "byn-{{configs.environment}}-00-ss-00-00-a-snet-pe-c1"
        cidr                                           = ["{{configs.byn_cus_vnet_02_snet_01_cidr}}"]
        nsg_key                                        = "cus_nsg_default"
        route_table_key = "cus_rt_01"        
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }
      
      cus_vnet_02_snet_02 = {
        name            = "byn-{{configs.environment}}-00-ss-00-00-a-snet-s2iaas-c1"
        cidr            = ["{{configs.byn_cus_vnet_02_snet_02_cidr}}"]
        nsg_key         = "cus_nsg_default"
        route_table_key = "cus_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
                
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
