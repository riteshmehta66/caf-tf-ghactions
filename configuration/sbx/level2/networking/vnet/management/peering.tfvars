# Hub to Hub VNet peering a) true b) true c) false d) false
# spoke to hub a) true b) TO-BE-CHECKED c) false d) true
# Hub to spoke a) true b) true c) true d) false

vnet_peerings = {
  

  // eus2_hubvnet_TO_eus2_mgmt_spoke1 = {
  //   name = "eus2_hubvnet_TO_eus2_mgmt_spoke1"
  //   from = {
  //     lz_key = "caf_level1_vnets_connectivity"
  //     vnet_key = "eus2_vnet_01"
  //   }
  //   to = {
  //     // lz_key = "caf_level2_vnets_management"
  //     vnet_key = "eus2_vnet_01"
  //   }
  //   # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
  //   allow_virtual_network_access = true
  //   # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
  //   allow_forwarded_traffic      = true
  //   #  false for hub-hub, false for spoke-hub, true for hub-spoke  
  //   allow_gateway_transit        = false
  //   # false for hub-hub, true for spoke-hub, false for hub-spoke  
  //   use_remote_gateways          = false
  // }

  eus2_mgmt_spoke1_TO_eus2_hubvnet = {
    name = "con-sbx-mgt-ntw-00-00-a-peer-mgs1eh-e2"
    from = {
      // lz_key = "caf_level2_vnets_management"
      vnet_key = "eus2_vnet_01"
      
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
      vnet_key = "eus2_vnet_01"      
    }
    # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
    allow_virtual_network_access = true
    # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
    allow_forwarded_traffic      = true
    #  false for hub-hub, false for spoke-hub, true for hub-spoke  
    allow_gateway_transit        = false
    # false for hub-hub, true for spoke-hub, false for hub-spoke  
    use_remote_gateways          = false
  }





  cus_mgmt_spoke1_TO_cus_hubvnet = {
    name = "con-sbx-mgt-ntw-00-00-a-peer-mgs1ch-e2"
    from = {
      // lz_key = "caf_level2_vnets_management"
      // output_key = "vnets"
      vnet_key = "cus_vnet_01"
      
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
      // output_key = "vnets"
      vnet_key = "cus_vnet_01"      
    }
    # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
    allow_virtual_network_access = true
    # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
    allow_forwarded_traffic      = true
    #  false for hub-hub, false for spoke-hub, true for hub-spoke  
    allow_gateway_transit        = false
    # false for hub-hub, true for spoke-hub, false for hub-spoke  
    use_remote_gateways          = false
  }


}