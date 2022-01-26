
// diagnostics_definition = {
//   azure_vnet_firewall = {
//     name = "operational_logs_and_metrics"
//     categories = {
//       log = [
//         # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
//         ["AzureFirewallApplicationRule", true, true, 30],
//         ["AzureFirewallNetworkRule", true, true, 30],
//         ["AzureFirewallDnsProxy", true, true, 30],
//       ]
//       metric = [
//         #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
//         ["AllMetrics", true, true, 30],
//       ]
//     }
//   }
// }


azurerm_firewalls = {
  eus2_azfw1 = {
    name                = "con-{{configs.environment}}-hub-ntw-00-00-a-afw-00-e2"
    resource_group_key  = "eus2_vnet_rg_01"
    region              = "region1"
    vnet_key            = "eus2_vnet_01"
    sku_name            = "AZFW_VNet"
    sku_tier            = "Premium"
    zones               = [1, 2, 3]
    firewall_policy_key = "eus2_azfw_policy1"
    public_ips = {
      ip1 = {
        name          = "eus2_azfw_pip1"
        public_ip_key = "eus2_azfw_pip1"
        vnet_key      = "eus2_vnet_01"
        subnet_key    = "AzureFirewallSubnet"
        # lz_key = "lz_key"
      }
      # ip2 = {
      #   name = "pip2"
      #   public_ip_id = "azure_resource_id"
      #   subnet_id = "azure_resource_id"
      # }
    }

    ##### Added 
    // management_ip_configuration = {
    //   mgmt_config1 = {
    //   name        = "Mgmt_config1"
    //   public_ip_key = "eus2_azfw_mgmt_pip1"
    //   vnet_key      = "eus2_vnet_01"
    //   subnet_key    = "AzureFirewallManagementSubnet"
    //   // # lz_key = "lz_key"     
    //   }      
    // }

    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "azure_vnet_firewall"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }

  }

  cus_azfw1 = {
    name                = "con-{{configs.environment}}-hub-ntw-00-00-a-afw-00-c1"
    resource_group_key  = "cus_vnet_rg_01"
    region              = "region2"
    vnet_key            = "cus_vnet_01"
    sku_name            = "AZFW_VNet"
    sku_tier            = "Premium"
    zones               = [1, 2, 3]
    firewall_policy_key = "cus_azfw_policy1"
    public_ips = {
      ip1 = {
        name          = "cus_azfw_pip1"
        public_ip_key = "cus_azfw_pip1"
        vnet_key      = "cus_vnet_01"
        subnet_key    = "AzureFirewallSubnet"
        # lz_key = "lz_key"
      }
      # ip2 = {
      #   name = "pip2"
      #   public_ip_id = "azure_resource_id"
      #   subnet_id = "azure_resource_id"
      # }
    }

    ##### Added 
    // management_ip_configuration = {
    //   mgmt_config1 = {
    //   name        = "Mgmt_config1"
    //   public_ip_key = "cus_azfw_mgmt_pip1"
    //   vnet_key      = "cus_vnet_01"
    //   subnet_key    = "AzureFirewallManagementSubnet"
    //   // # lz_key = "lz_key"     
    //   }      
    // }

    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "azure_vnet_firewall"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }
  }
}

azurerm_firewall_policies = {
  eus2_azfw_policy1 = {
    name               = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-00-e2"
    resource_group_key = "eus2_vnet_rg_01"
    region             = "region1"
  }

  cus_azfw_policy1 = {
    name               = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-00-c1"
    resource_group_key = "cus_vnet_rg_01"
    region             = "region2"
  }
}

azurerm_firewall_policy_rule_collection_groups = {
  
  eus2_aks_rcg1 = {
    #firewall_policy_id = "Azure Resource ID"
    firewall_policy_key = "eus2_azfw_policy1"
    name                = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-cgaks-e2"
    priority            = 10001

    network_rule_collections = {
      aks = {
        name     = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-craks-e2"
        priority = 1000
        action   = "Allow"
        rules = {         
          aks_https_in_allow = {
            name                  = "aks_https_in_allow"
            protocols             = ["TCP"]
            source_addresses      = ["*"]
            destination_addresses = ["{{configs.eus2_aks_ip_cidr_supernet}}","{{configs.byn_eus2_vnet_01_cidr2}}"]
            destination_ports     = ["443"]
          }
          aks_api_out_allow_1194 = {
            name                  = "aks_api_out_allow_1194"
            protocols             = ["UDP"]
            source_addresses      = ["*"]
            destination_addresses = ["AzureCloud"]
            destination_ports     = ["1194"]
          }
          aks-api-out-allow-9000 = {
            name                  = "aks-api-out-allow-9000"
            protocols             = ["TCP"]
            source_addresses      = ["*"]
            destination_addresses = ["AzureCloud"]
            destination_ports     = ["9000"]
          }
          aks-ntp-out-allow = {
            name                  = "aks-ntp-out-allow"
            protocols             = ["UDP"]
            source_addresses      = ["*"]
            destination_addresses = ["*"]
            destination_ports     = ["123"]
          }
          aks-https-out-allow-443 = {
            name                  = "aks-https-out-allow-443"
            protocols             = ["TCP"]
            source_addresses      = ["*"]
            destination_addresses = ["*"]
            destination_ports     = ["443"]
          }          
        }
      }
    }    
  }

  eus2_vnets_rcg1 = {
    #firewall_policy_id = "Azure Resource ID"
    firewall_policy_key = "eus2_azfw_policy1"
    name                = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-cgvnet-e2"
    priority            = 10002

    network_rule_collections = {
      eus2_vnets_allow = {
        name     = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-crvnet-e2"
        priority = 1000
        action   = "Allow"
        rules = {
          
          eus2_to_internet = {
            name                  = "allow_eus2_to_internet"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.eus2_ip_cidr_supernet}}"]
            destination_addresses = ["Internet"]
            destination_ports     = ["443"]
          }
          eus2_to_eus2 = {
            name                  = "allow_eus2_to_eus2"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.eus2_ip_cidr_supernet}}"]
            destination_addresses = ["{{configs.eus2_ip_cidr_supernet}}"]
            destination_ports     = ["*"]
          }
          eus2_to_cus = {
            name                  = "allow_eus2_to_cus"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.eus2_ip_cidr_supernet}}"]
            destination_addresses = ["{{configs.cus_ip_cidr_supernet}}"]
            destination_ports     = ["*"]
          }
          cus_to_eus2 = {
            name                  = "allow_cus_to_eus2"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.cus_ip_cidr_supernet}}"]
            destination_addresses = ["{{configs.eus2_ip_cidr_supernet}}"]
            destination_ports     = ["*"]
          }                           
        }
      }
    }    
  }

  

  cus_aks_rcg1 = {
    #firewall_policy_id = "Azure Resource ID"
    firewall_policy_key = "cus_azfw_policy1"
    name                = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-cgaks-c1"
    priority            = 10001

    network_rule_collections = {
      aks = {
        name     = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-craks-c1"
        priority = 1000
        action   = "Allow"
        rules = {
          // aks_http_in_allow = {
          //   name                  = "aks_http_in_allow"
          //   protocols             = ["TCP"]
          //   source_addresses      = ["*"]
          //   destination_addresses = ["*"]
          //   destination_ports     = ["80"]
          // }
          aks_https_in_allow = {
            name                  = "aks_https_in_allow"
            protocols             = ["TCP"]
            source_addresses      = ["*"]
            destination_addresses = ["*"]
            destination_ports     = ["443"]
          }
          aks_api_out_allow_1194 = {
            name                  = "aks_api_out_allow_1194"
            protocols             = ["UDP"]
            source_addresses      = ["*"]
            destination_addresses = ["AzureCloud"]
            destination_ports     = ["1194"]
          }
          aks-api-out-allow-9000 = {
            name                  = "aks-api-out-allow-9000"
            protocols             = ["TCP"]
            source_addresses      = ["*"]
            destination_addresses = ["AzureCloud"]
            destination_ports     = ["9000"]
          }
          aks-ntp-out-allow = {
            name                  = "aks-ntp-out-allow"
            protocols             = ["UDP"]
            source_addresses      = ["*"]
            destination_addresses = ["*"]
            destination_ports     = ["123"]
          }
          aks-https-out-allow-443 = {
            name                  = "aks-https-out-allow-443"
            protocols             = ["TCP"]
            source_addresses      = ["*"]
            destination_addresses = ["*"]
            destination_ports     = ["443"]
          }          
        }
      }
    }    
  }

  cus_vnets_rcg1 = {
    #firewall_policy_id = "Azure Resource ID"
    firewall_policy_key = "cus_azfw_policy1"
    name                = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-cgvnet-c1"
    priority            = 10002

    network_rule_collections = {
      cus_vnets_allow = {
        name     = "con-{{configs.environment}}-hub-ntw-00-00-a-afwp-crvnet-c1"
        priority = 1000
        action   = "Allow"
        rules = {
          
          cus_to_internet = {
            name                  = "allow_cus_to_internet"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.cus_ip_cidr_supernet}}"]
            destination_addresses = ["Internet"]
            destination_ports     = ["443"]
          }
          cus_to_cus = {
            name                  = "allow_cus_to_cus"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.cus_ip_cidr_supernet}}"]
            destination_addresses = ["{{configs.cus_ip_cidr_supernet}}"]
            destination_ports     = ["*"]
          }
          eus2_to_cus = {
            name                  = "allow_eus2_to_cus"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.eus2_ip_cidr_supernet}}"]
            destination_addresses = ["{{configs.cus_ip_cidr_supernet}}"]
            destination_ports     = ["*"]
          }
          cus_to_eus2 = {
            name                  = "allow_cus_to_eus2"
            protocols             = ["Any"]
            source_addresses      = ["{{configs.cus_ip_cidr_supernet}}"]
            destination_addresses = ["{{configs.eus2_ip_cidr_supernet}}"]
            destination_ports     = ["*"]
          }                           
        }
      }
    }    
  }
}