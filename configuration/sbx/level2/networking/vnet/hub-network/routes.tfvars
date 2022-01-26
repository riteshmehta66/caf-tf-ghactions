route_tables = {
  eus2_rt_01 = {
    name               = "con-sbx-hub-ntw-00-00-a-rt-00-e2"
    resource_group_key = "eus2_vnet_rg_01"
  }
  cus_rt_01 = {
    name               = "con-sbx-hub-ntw-00-00-a-rt-00-c1"
    resource_group_key = "cus_vnet_rg_01"
  }
}

azurerm_routes = {
  eus2_default_internet_route = {
    name               = "con-sbx-hub-ntw-00-00-a-udr-defint-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "Internet"
   
  }
  eus2_cus_non_aks_vnet_route = {
    name               = "con-sbx-hub-ntw-00-00-a-udr-c1vnets-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "10.140.64.0/18"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.140.64.4"
  }
  eus2_cus_aks_vnet_route = {
    name               = "con-sbx-hub-ntw-00-00-a-udr-c1aks-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "10.140.96.0/20"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.140.64.4"
  }  

  
  cus_default_internet_route = {
    name               = "con-sbx-hub-ntw-00-00-a-udr-defint-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "Internet"
    
  }
  cus_eus2_non_aks_vnet_route = {
    name               = "con-sbx-hub-ntw-00-00-a-udr-e2vnets-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "10.136.64.0/18"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.136.64.4"
  }
  cus_eus2_aks_vnet_route = {
    name               = "con-sbx-hub-ntw-00-00-a-udr-e2aks-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "10.136.96.0/20"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "10.136.64.4"
  } 
}