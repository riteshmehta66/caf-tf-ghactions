network_security_group_definition = {

  eus2_nsg_default = {
    resource_group_key = "eus2_vnet_rg_01"
    name               = "idm-{{configs.environment}}-00-idm-00-mhb-a-nsg-ads-e2"    
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
        name                       = "idm-{{configs.environment}}-non-aks-e2cidr-Allow-e2",
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
        name                       = "idm-{{configs.environment}}-aks-e2cidr-Allow-e2",
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
        name                       = "idm-{{configs.environment}}-non-aks-c1cidr-Allow-e2",
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
        name                       = "idm-{{configs.environment}}-aks-c1cidr-Allow-e2",
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

    


  ####### Central US  ##########

  cus_nsg_default = {
    resource_group_key = "cus_vnet_rg_01"
    name               = "idm-{{configs.environment}}-00-idm-00-mhb-a-nsg-ads-c1"    
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
        name                       = "idm-{{configs.environment}}-non-aks-e2cidr-Allow-c1",
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
        name                       = "idm-{{configs.environment}}-aks-e2cidr-Allow-c1",
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
        name                       = "idm-{{configs.environment}}-non-aks-c1cidr-Allow-c1",
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
        name                       = "idm-{{configs.environment}}-aks-c1cidr-Allow-c1",
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
}