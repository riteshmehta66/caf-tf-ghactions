# Hub to Hub VNet peering a) true b) true c) false d) false
# spoke to hub a) true b) TO-BE-CHECKED c) false d) true
# Hub to spoke a) true b) true c) true d) false

vnet_peerings = {
  
  eus2_identity_spoke1_TO_eus2_hubvnet = {
    name = "con-sbx-idm-ntw-00-00-a-peer-ids1eh-e2"
    from = {
      // lz_key = "caf_level2_vnets_identity"
      // output_key = "vnets"
      vnet_key = "eus2_vnet_01"
      
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
      // output_key = "vnets"
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


  cus_identity_spoke1_TO_cus_hubvnet = {
    name = "con-sbx-idm-ntw-00-00-a-peer-ids1ch-e2"
    from = {
      // lz_key = "caf_level2_vnets_identity"
      // output_key = "vnets"
      // resource_group_key  = "cus_vnet_rg_01"
      vnet_key = "cus_vnet_01"
      
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
      // output_key = "vnets"
      // resource_group_key  = "cus_vnet_rg_01"
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