
# Tags are mandatory for DDoS services
// ddos_services = {
//   ddos_plan_eastus2 = {
//     name = "con-sbx-hub-ntw-00-00-a-ddos-00-e2"
//     resource_group_key = "eus2_vnet_rg_01"
//     region = "region1"
//     enable = true
    
//     tags   = {
//       "application name"  = "network hub"
//       "sbx hours" =  "7am-7pm EST WD's"
//       "business unit"  =  "sre"
//       "cost center"  =  "26839-200100"
//       "environment type" =  "sbx"
//       "operations team" =  "tech services"
//       "owner name" = "thomas.stokkeland@mobileheartbeat.com "
//       "customer name"  =  "pqr"
//       "customer contact"  =  "chris.sego@mobileheartbeat.com"
//       "data classification"  =  "confidential"
//     }
//   }

//   ddos_plan_centralus = {
//     name = "con-sbx-hub-ntw-00-00-a-ddos-00-c1"
//     resource_group_key = "cus_vnet_rg_01"
//     region = "region2"
//     enable = true 

//     tags   = {
//       "application name"  = "network hub"
//       "sbx hours" =  "7am-7pm EST WD's"
//       "business unit"  =  "sre"
//       "cost center"  =  "26839-200100"
//       "environment type" =  "sbx"
//       "operations team" =  "tech services"
//       "owner name" = "thomas.stokkeland@mobileheartbeat.com "
//       "customer name"  =  "pqr"
//       "customer contact"  =  "chris.sego@mobileheartbeat.com"
//       "data classification"  =  "confidential"
//     }   
//   }
// }


vnets = {
  
  eus2_vnet_01 = {
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
    // ddos_services_key = "ddos_plan_eastus2"

    vnet = {
      name          = "con-sbx-hub-ntw-00-00-a-vnet-00-e2"
      address_space = ["10.136.64.0/23"]      
    }
    specialsubnets = {
      AzureFirewallSubnet = {           # /26 or larger
        name = "AzureFirewallSubnet" #Must be called AzureFirewallSubnet
        cidr = ["10.136.64.0/26"]
        nsg_key = "eus2_nsg_default"
        // route_table_key = "eus2_rt_01"

      }
      GatewaySubnet = {         # /29 or larger, /26 or larger recommended
        name = "GatewaySubnet" #Must be called GateWaySubnet in order to host a Virtual Network Gateway
        cidr = ["10.136.64.128/27"]
      }      
    }

    subnets = {
      AzureBastionSubnet = {            # /27 or larger
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.136.64.96/27"]
        nsg_key = "eus2_azure_bastion_nsg"
      }    

      
      eus2_vnet_01_snet_01 = {
        name    = "con-sbx-hub-ntw-00-00-a-snet-iaas1-e2" 
        cidr    = ["10.136.65.0/25"]
        // nsg_key = "eus2_nsg_appgw"
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
    // ddos_services_key = "ddos_plan_centralus"

    vnet = {
      name          = "con-sbx-hub-ntw-00-00-a-vnet-00-c1"
      address_space = ["10.140.64.0/23"]      
    }
    specialsubnets = {

      AzureFirewallSubnet = {           # /26 or larger
        name = "AzureFirewallSubnet" #Must be called AzureFirewallSubnet, NSG not supported on Firewall subnet
        cidr = ["10.140.64.0/26"] 
        nsg_key = "cus_nsg_default"    
        // route_table_key = "cus_rt_01"
      }
      GatewaySubnet = {         # /29 or larger, /26 or larger recommended
        name = "GatewaySubnet" #Must be called GateWaySubnet in order to host a Virtual Network Gateway, NSG not supported on Gateway subnet
        cidr = ["10.140.64.128/27"]
      }

    }

    subnets = {
      AzureBastionSubnet = {            # /27 or larger
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.140.64.96/27"]
        nsg_key = "cus_azure_bastion_nsg"
      }
    

      cus_vnet_01_snet_01 = {
        name    = "con-sbx-hub-ntw-00-00-a-snet-iaas1-c1" 
        cidr    = ["10.140.65.0/25"]
        nsg_key = "cus_nsg_appgw"
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


### Below is sample vnet including AzureFirewallManagementSubnet
// vnets = {
//   eus2_vnet_01 = {
//     resource_group_key = "eus2_vnet_rg_01"
//     region             = "region1"
//     // ddos_services_key = "ddos_plan_eastus2"

//     vnet = {
//       name          = "pqr-azeus2-nt-sbx-vnet-001"
//       address_space = ["10.136.64.0/23"]
//       // dns_servers         = ["10.127.139.4", "10.127.139.5"]                            # For testing
//       // dns_servers         = ["10.127.139.36", "10.127.139.37"]
//     }
//     specialsubnets = {
//       GatewaySubnet = {         # /29 or larger, /26 or larger recommended
//         name = "GatewaySubnet" #Must be called GateWaySubnet in order to host a Virtual Network Gateway
//         cidr = ["10.136.64.128/27"]
//       }
//       AzureFirewallSubnet = {           # /26 or larger
//         name = "AzureFirewallSubnet" #Must be called AzureFirewallSubnet
//         cidr = ["10.136.64.0/26"]
//       }

//       AzureFirewallManagementSubnet = {
//         name    = "AzureFirewallManagementSubnet" 
//         cidr    = ["10.136.64.64/26"]
//         // nsg_key = "eus2_nsg_default"
//         // route_table_key = "eus2_rt_01"
//       }
      
//     }
//     subnets = {
//       AzureBastionSubnet = {            # /27 or larger
//         name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
//         cidr    = ["10.136.64.160/27"]
//         // nsg_key = "eus2_nsg_default"   // check if nsg is not supported on AzureBastionSubnet ?
//       }

      
    

//       // eus2_vnet_01_snet_01 = {
//       //   name    = "pqr-azeus2-nt-sbx-vnet-001-azfw_public-snet-001" 
//       //   cidr    = ["10.136.64.32/27"]
//       //   nsg_key = "eus2_nsg_default"
//       //   // route_table_key = "eus2_rt_01"
//       // }

      

//       eus2_vnet_01_snet_03 = {
//         name    = "pqr-azeus2-nt-sbx-vnet-001-iaas-snet-001" 
//         cidr    = ["10.136.65.0/25"]
//         nsg_key = "eus2_nsg_default"
//         // route_table_key = "eus2_rt_01"
//       }

//       // eus2_vnet_01_snet_09 = {
//       //   name    = "pqrazeus2ntsbxvnet001-pvt-endpoint-snet001" 
//       //   cidr    = ["10.127.130.0/23"]
//       //   # No NSG for Pvt Endpoint
//       //   // // route_table_key = "eus2_rt_01"
//       //   enforce_private_link_endpoint_network_policies = true

//       // }

//     }

//     diagnostic_profiles = {
//       // diagnostics_storage_account = {
//       //   name             = "diagnostics-storageaccount"
//       //   definition_key   = "networking_all"
//       //   destination_type = "storage"
//       //   destination_key  = "all_regions"
//       // }
//       diagnostics_log_analytic = {
//         name             = "diagnostics-loganalytics"
//         definition_key   = "networking_all"
//         destination_type = "log_analytics"
//         destination_key  = "eus2_logs"
//       }
//       // operationsevh = {
//       //   name             = "diagnostics-eventhub"
//       //   definition_key   = "networking_all"
//       //   destination_type = "event_hub"
//       //   destination_key  = "eus2_evh"
//       // }
//     }
//   }
// }