

public_ip_addresses = {
  eus2_azfw_pip1 = {
    name               = "con-sbx-hub-ntw-00-00-a-pip-afw-e2"
    resource_group_key = "eus2_vnet_rg_01"
    # must be 'Standard' SKU for Azure Firewall
    sku                = "Standard"             
    # Standard SKU Public IP Addresses that do not specify a zone are zone redundant by default.
    # must be 'Static' for Azure Firewall
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"
  }
  // eus2_azfw_mgmt_pip1 = {
  //   name               = "con-sbx-hub-ntw-00-00-a-pip-afwmgt-e2"
  //   resource_group_key = "eus2_vnet_rg_01"
  //   sku                = "Standard"             # must be 'Standard' SKU for Azure Firewall
  //   # Standard SKU Public IP Addresses that do not specify a zone are zone redundant by default.
  //   allocation_method       = "Static"          # must be 'Static' for Azure Firewall 
  //   ip_version              = "IPv4"
  //   idle_timeout_in_minutes = "4"
  // }

  cus_azfw_pip1 = {
    name               = "con-sbx-hub-ntw-00-00-a-pip-afw-c1"
    resource_group_key = "cus_vnet_rg_01"
    # must be 'Standard' SKU for Azure Firewall
    sku                = "Standard"             
    # Standard SKU Public IP Addresses that do not specify a zone are zone redundant by default.
    # must be 'Static' for Azure Firewall 
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"
  }
  // cus_azfw_mgmt_pip1 = {
  //   name               = "con-sbx-hub-ntw-00-00-a-pip-afwmgt-c1"
  //   resource_group_key = "cus_vnet_rg_01"
  //   sku                = "Standard"             # must be 'Standard' SKU for Azure Firewall
  //   # Standard SKU Public IP Addresses that do not specify a zone are zone redundant by default.
  //   allocation_method       = "Static"          # must be 'Static' for Azure Firewall 
  //   ip_version              = "IPv4"
  //   idle_timeout_in_minutes = "4"
  // }

  

  eus2_bastion_host_pip_01 = {
    name                    = "con-sbx-hub-ntw-00-00-a-pip-bas-e2"
    region                  = "region1"
    resource_group_key      = "eus2_vnet_rg_01"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"

    // # you can setup up to 5 key
    // diagnostic_profiles = {
    //   central_logs_region1 = {
    //     definition_key   = "public_ip_address"
    //     destination_type = "log_analytics"
    //     destination_key  = "central_logs"
    //   }
    // }
  }

  cus_bastion_host_pip_01 = {
    name                    = "con-sbx-hub-ntw-00-00-a-pip-bas-c1"
    region                  = "region2"
    resource_group_key      = "cus_vnet_rg_01"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"

    // # you can setup up to 5 key
    // diagnostic_profiles = {
    //   central_logs_region1 = {
    //     definition_key   = "public_ip_address"
    //     destination_type = "log_analytics"
    //     destination_key  = "central_logs"
    //   }
    // }
  }
}