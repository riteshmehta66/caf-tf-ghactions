network_security_group_definition = {

  eus2_nsg_default = {
    resource_group_key = "eus2_vnet_rg_01"
    name               = "byn-{{configs.environment}}-00-ss-00-00-a-nsg-def-e2"    
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
        name                       = "byn-{{configs.environment}}-non-aks-e2cidr-Allow-e2",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-e2cidr-Allow-e2",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-non-aks-c1cidr-Allow-e2",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-c1cidr-Allow-e2",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      }
    ]    
  }

  eus2_nsg_aks = {
    resource_group_key = "eus2_vnet_rg_01"
    name               = "byn-{{configs.environment}}-00-ss-00-00-a-nsg-aks-e2"    
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
        name                       = "byn-{{configs.environment}}-non-aks-e2cidr-Allow-e2",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-e2cidr-Allow-e2",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-non-aks-c1cidr-Allow-e2",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-c1cidr-Allow-e2",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },

      // # aks specific

      {
        name                       = "byn-{{configs.environment}}-aks-https_in_443-Allow-e2",
        priority                   = "2001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "{{configs.eus2_aks_ip_cidr_supernet}}"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-api_out_1194-Allow-e2",
        priority                   = "2001"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "1194"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "AzureCloud"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-api_out_9000-Allow-e2",
        priority                   = "2002"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "9000"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "AzureCloud"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-api_out_ntp-Allow-e2",
        priority                   = "2003"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "123"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "*"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-https_out_443-Allow-e2",
        priority                   = "2004"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "*"
      }

    ]    
  }

    


  ####### Central US  ##########

  cus_nsg_default = {
    resource_group_key = "cus_vnet_rg_01"
    name               = "byn-{{configs.environment}}-00-ss-00-00-a-nsg-def-c1"    
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
        name                       = "byn-{{configs.environment}}-non-aks-e2cidr-Allow-c1",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-e2cidr-Allow-c1",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-non-aks-c1cidr-Allow-c1",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-c1cidr-Allow-c1",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      }
    ]     
  } 

  cus_nsg_aks = {
    resource_group_key = "cus_vnet_rg_01"
    name               = "byn-{{configs.environment}}-00-ss-00-00-a-nsg-aks-c1"    
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
        name                       = "byn-{{configs.environment}}-non-aks-e2cidr-Allow-c1",
        priority                   = "1000"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-e2cidr-Allow-c1",
        priority                   = "1001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.eus2_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-non-aks-c1cidr-Allow-c1",
        priority                   = "1002"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-c1cidr-Allow-c1",
        priority                   = "1003"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "VirtualNetwork"
      },

      {
        name                       = "byn-{{configs.environment}}-aks-https_in_443-Allow-c1",
        priority                   = "2001"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "{{configs.cus_aks_ip_cidr_supernet}}"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-api_out_1194-Allow-c1",
        priority                   = "2001"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "1194"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "AzureCloud"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-api_out_9000-Allow-c1",
        priority                   = "2002"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "9000"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "AzureCloud"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-api_out_ntp-Allow-c1",
        priority                   = "2003"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "123"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "*"
      },
      {
        name                       = "byn-{{configs.environment}}-aks-https_out_443-Allow-c1",
        priority                   = "2004"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "{{configs.cus_aks_ip_cidr_supernet}}"
        destination_address_prefix = "*"
      }
    ]     
  }   
}

