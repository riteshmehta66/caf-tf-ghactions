route_tables = {
  eus2_rt_01 = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-rt-def-e2"
    resource_group_key = "eus2_vnet_rg_01"
  }
  cus_rt_01 = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-rt-def-c1"
    resource_group_key = "cus_vnet_rg_01"
  }
}

azurerm_routes = {
  eus2_default_internet_route = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-defint-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_eus2_azfw_pvt_ip_1}}"
  }
  eus2_route_to_cus_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-c1vnet-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "{{configs.cus_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_eus2_azfw_pvt_ip_1}}"
  }
  eus2_route_to_cus_aks_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-c1aks-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "{{configs.cus_aks_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_eus2_azfw_pvt_ip_1}}"
  }
  eus2_route_to_eus2_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-e2vnet-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "{{configs.eus2_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_eus2_azfw_pvt_ip_1}}"
  }
  eus2_route_to_eus2_aks_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-e2aks-e2"
    resource_group_key = "eus2_vnet_rg_01"
    route_table_key    = "eus2_rt_01"
    address_prefix     = "{{configs.eus2_aks_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_eus2_azfw_pvt_ip_1}}"
  }


  cus_default_internet_route = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-defint-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_cus_azfw_pvt_ip_1}}"
  }
  cus_route_to_eus2_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-e2vnet-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "{{configs.eus2_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_cus_azfw_pvt_ip_1}}"
  }
  cus_route_to_eus2_aks_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-e2aks-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "{{configs.eus2_aks_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_cus_azfw_pvt_ip_1}}"
  }
  cus_route_to_cus_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-c1vnet-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "{{configs.cus_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_cus_azfw_pvt_ip_1}}"
  }
  cus_route_to_cus_aks_cidr = {
    name               = "mgt-{{configs.environment}}-00-ss-00-00-a-udr-c1aks-c1"
    resource_group_key = "cus_vnet_rg_01"
    route_table_key    = "cus_rt_01"
    address_prefix     = "{{configs.cus_aks_ip_cidr_supernet}}"
    next_hop_type      = "VirtualAppliance"
    next_hop_in_ip_address = "{{configs.connectivity_cus_azfw_pvt_ip_1}}"
  }  
}