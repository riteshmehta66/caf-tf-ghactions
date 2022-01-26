network_security_group_definition = {
    
  eus2_nsg_default = {
    resource_group_key = "eus2_vnet_rg_01"
    name               = "con-sbx-hub-ntw-00-00-a-nsg-iasss-e2"
    version             = 1
    
    flow_logs = {
      version = 2
      enabled = true
      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "eus2_logs"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }
    nsg = [
      // {
      //   name                       = "RDP-Inbound-Allow",
      //   priority                   = "999"
      //   direction                  = "Inbound"
      //   access                     = "Allow"
      //   protocol                   = "tcp"
      //   source_port_range          = "*"
      //   destination_port_range     = "3389"
      //   source_address_prefix      = "144.121.43.0/24"
      //   destination_address_prefix = "VirtualNetwork"
      // },
      {
        name                       = "conn-sbx-non-aks-e2cidr-Allow-e2",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-e2cidr-Allow-e2",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-non-aks-c1cidr-Allow-e2",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-c1cidr-Allow-e2",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      }
    ]    
  }


  eus2_azure_bastion_nsg = {
    resource_group_key = "eus2_vnet_rg_01"
    name               = "con-sbx-hub-ntw-00-00-a-nsg-bass-e2"
    version             = 1

    flow_logs = {
      version = 2
      enabled = true
      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "eus2_logs"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }

    nsg = [
      {
        name                       = "bastion-in-allow",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-control-in-allow-443",
        priority                   = "120"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "135"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "Kerberos-password-change",
        priority                   = "121"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "4443"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-vnet-out-allow-22",
        priority                   = "103"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-vnet-out-allow-3389",
        priority                   = "101"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-azure-out-allow",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      }
    ]
  }

  eus2_nsg_appgw = {
    resource_group_key = "eus2_vnet_rg_01"
    name               = "con-sbx-hub-ntw-00-00-a-nsg-appgw-e2"
    version             = 1
    
    flow_logs = {
      version = 2
      enabled = true
      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "eus2_logs"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }
    nsg = [
      // {
      //   name                       = "RDP-Inbound-Allow",
      //   priority                   = "999"
      //   direction                  = "Inbound"
      //   access                     = "Allow"
      //   protocol                   = "tcp"
      //   source_port_range          = "*"
      //   destination_port_range     = "3389"
      //   source_address_prefix      = "144.121.43.0/24"
      //   destination_address_prefix = "VirtualNetwork"
      // },
      {
        name                       = "conn-sbx-non-aks-e2cidr-Allow-e2",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-e2cidr-Allow-e2",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-non-aks-c1cidr-Allow-e2",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-c1cidr-Allow-e2",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-appgw-Allow-e2",
        priority                   = "1004"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "65200-65535"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"                          # Destination subnet 'Any' is reqd. as per https://docs.microsoft.com/en-us/azure/application-gateway/configuration-infrastructure
      }
    ]    
  }  
  


  ####### Central US  ##########
  
  

  cus_nsg_default = {
    resource_group_key = "cus_vnet_rg_01"
    name               = "con-sbx-hub-ntw-00-00-a-nsg-iasss-c1"
    version             = 1

    flow_logs = {
      version = 2
      enabled = true
      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "cus_logs"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }
    nsg = [
      // {
      //   name                       = "RDP-Inbound-Allow",
      //   priority                   = "999"
      //   direction                  = "Inbound"
      //   access                     = "Allow"
      //   protocol                   = "tcp"
      //   source_port_range          = "*"
      //   destination_port_range     = "3389"
      //   source_address_prefix      = "144.121.43.0/24"
      //   destination_address_prefix = "VirtualNetwork"
      // },
      {
        name                       = "conn-sbx-non-aks-e2cidr-Allow-c1",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-e2cidr-Allow-c1",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-non-aks-c1cidr-Allow-c1",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-c1cidr-Allow-c1",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      }
    ]     
  }

  cus_azure_bastion_nsg = {
    resource_group_key = "cus_vnet_rg_01"
    name               = "con-sbx-hub-ntw-00-00-a-nsg-bass-c1"
    version             = 1

    flow_logs = {
      version = 2
      enabled = true
      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "cus_logs"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }

    nsg = [
      {
        name                       = "bastion-in-allow",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-control-in-allow-443",
        priority                   = "120"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "135"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "Kerberos-password-change",
        priority                   = "121"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "4443"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-vnet-out-allow-22",
        priority                   = "103"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-vnet-out-allow-3389",
        priority                   = "101"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-azure-out-allow",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      }
    ]
  }

  cus_nsg_appgw = {
    resource_group_key = "cus_vnet_rg_01"
    name               = "con-sbx-hub-ntw-00-00-a-nsg-appgw-c1"
    version             = 1
    
    flow_logs = {
      version = 2
      enabled = true
      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "cus_logs"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }
    nsg = [
      // {
      //   name                       = "RDP-Inbound-Allow",
      //   priority                   = "999"
      //   direction                  = "Inbound"
      //   access                     = "Allow"
      //   protocol                   = "tcp"
      //   source_port_range          = "*"
      //   destination_port_range     = "3389"
      //   source_address_prefix      = "144.121.43.0/24"
      //   destination_address_prefix = "VirtualNetwork"
      // },
      {
        name                       = "conn-sbx-non-aks-e2cidr-Allow-c1",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-e2cidr-Allow-c1",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.136.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-non-aks-c1cidr-Allow-c1",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.64.0/18"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-aks-c1cidr-Allow-c1",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "10.140.96.0/20"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "conn-sbx-appgw-Allow-c1",
        priority                   = "1004"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "65200-65535"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"                          
      }
    ]    
  }  
}