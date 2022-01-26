route_tables = {
  eus2_rt_01 = {
    name               = "mgt-sbx-00-ss-00-00-a-rt-def-e2"
    resource_group_key = "eus2_vnet_rg_01"
  }
  cus_rt_01 = {
    name               = "mgt-sbx-00-ss-00-00-a-rt-def-c1"
    resource_group_key = "cus_vnet_rg_01"
  }
}

azurerm_routes = {
  eus2_default_internet_route = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-defint-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.136.64.4"
  }
  eus2_route_to_cus_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-c1vnet-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "10.140.64.0/18"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.136.64.4"
  }
  eus2_route_to_cus_aks_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-c1aks-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "10.140.96.0/20"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.136.64.4"
  }
  eus2_route_to_eus2_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-e2vnet-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "10.136.64.0/18"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.136.64.4"
  }
  eus2_route_to_eus2_aks_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-e2aks-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "10.136.96.0/20"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.136.64.4"
  }


  cus_default_internet_route = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-defint-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.140.64.4"
  }
  cus_route_to_eus2_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-e2vnet-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "10.136.64.0/18"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.140.64.4"
  }
  cus_route_to_eus2_aks_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-e2aks-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "10.136.96.0/20"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.140.64.4"
  }
  cus_route_to_cus_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-c1vnet-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "10.140.64.0/18"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.140.64.4"
  }
  cus_route_to_cus_aks_cidr = {
    name               = "mgt-sbx-00-ss-00-00-a-udr-c1aks-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "10.140.96.0/20"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.140.64.4"
  }  
}