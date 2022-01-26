
vnets = {
  eus2_vnet_01 = {
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
    vnet = {
      name          = "byn-sbx-00-ss-00-00-a-vnet-spk1-e2"
      address_space = ["10.136.96.0/20", "10.136.95.0/24"]     
    }
    specialsubnets = {}

    subnets = {

      eus2_vnet_01_snet_01 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-aks-blue-e2"
        cidr                                           = ["10.136.96.0/22"]
        nsg_key                                        = "eus2_nsg_aks"
        route_table_key = "eus2_rt_01"
        // enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }

      eus2_vnet_01_snet_02 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-aks-green-e2"
        cidr                                           = ["10.136.100.0/22"]
        nsg_key                                        = "eus2_nsg_aks"
        route_table_key = "eus2_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
        
        // delegation = {              ## For testing of Function App
        //   name               = "serverFarms"
        //   service_delegation = "Microsoft.Web/serverFarms"      
        // }
      }

      eus2_vnet_01_snet_03 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-aks-pvtep-e2"
        cidr                                           = ["10.136.95.0/24"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }
      
    }

    diagnostic_profiles = {
      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics-1"
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
      name          = "byn-sbx-00-ss-00-00-a-vnet-spk2-e2"
      address_space = ["10.136.70.0/24"]      
    }
    specialsubnets = {}

    subnets = {

      eus2_vnet_02_snet_01 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-pe-e2"
        cidr                                           = ["10.136.70.0/27"]
        nsg_key                                        = "eus2_nsg_default"
        route_table_key = "eus2_rt_01"
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }

      eus2_vnet_02_snet_02 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-iaas-e2"
        cidr                                           = ["10.136.70.32/27"]
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
        name             = "diagnostics-loganalytics-1"
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
      name          = "byn-sbx-00-ss-00-00-a-vnet-spk1-c1"
      address_space = ["10.140.96.0/20", "10.140.95.0/24"]      
    }

    specialsubnets = {}

    subnets = {

      eus2_vnet_01_snet_01 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-aks-blue-c1"
        cidr                                           = ["10.140.96.0/22"]
        nsg_key                                        = "cus_nsg_aks"
        route_table_key = "cus_rt_01"
        // enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }

      eus2_vnet_01_snet_02 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-aks-green-c1"
        cidr                                           = ["10.140.100.0/22"]
        nsg_key                                        = "cus_nsg_aks"
        route_table_key = "cus_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
        
        // delegation = {              ## For testing of Function App
        //   name               = "serverFarms"
        //   service_delegation = "Microsoft.Web/serverFarms"      
        // }
      }

      eus2_vnet_01_snet_03 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-aks-pvtep-c1"
        cidr                                           = ["10.140.95.0/24"]
        nsg_key                                     = "cus_nsg_default"
        route_table_key = "cus_rt_01"
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }
      
    }

    diagnostic_profiles = {
          
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics-1"
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
      name          = "byn-sbx-00-ss-00-00-a-vnet-spk2-c1"
      address_space = ["10.140.70.0/24"]      
    }

    specialsubnets = {}

    subnets = {

      cus_vnet_02_snet_01 = {
        name                                           = "byn-sbx-00-ss-00-00-a-snet-pe-c1"
        cidr                                           = ["10.140.70.0/27"]
        nsg_key                                        = "cus_nsg_default"
        route_table_key = "cus_rt_01"        
        enforce_private_link_endpoint_network_policies = true
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
      }
      
      cus_vnet_02_snet_02 = {
        name            = "byn-sbx-00-ss-00-00-a-snet-s2iaas-c1"
        cidr            = ["10.140.70.32/27"]
        nsg_key         = "cus_nsg_default"
        route_table_key = "cus_rt_01"
        // service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.ContainerRegistry", "Microsoft.EventHub", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.Sql", "Microsoft.Storage", "Microsoft.Web"]
                
      }
    }

    diagnostic_profiles = {
          
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics-1"
        definition_key   = "networking_all"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }
  }
            
}