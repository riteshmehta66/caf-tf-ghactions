# Hub to Hub VNet peering a) true b) true c) false d) false
# spoke to hub a) true b) TO-BE-CHECKED c) false d) true
# Hub to spoke a) true b) true c) true d) false

vnet_peerings = {
  
  eus2_bynlz_spoke1_TO_eus2_hubvnet = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-bys1eh-e2"
    from = {
      // lz_key = "caf_level2_vnets_byn_lz"
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
  
  eus2_bynlz_spoke2_TO_eus2_hubvnet = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-bys2eh-e2"
    from = {
      // lz_key = "caf_level2_vnets_byn_lz"
      vnet_key = "eus2_vnet_02"
      
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



  cus_bynlz_spoke1_TO_cus_hubvnet = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-bys1ch-e2"
    from = {
      // lz_key = "caf_level2_vnets_byn_lz"      
      vnet_key = "cus_vnet_01"
      
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
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

  cus_bynlz_spoke2_TO_cus_hubvnet = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-bys2ch-e2"
    from = {
      // lz_key = "caf_level2_vnets_byn_lz"      
      vnet_key = "cus_vnet_02"
      
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
      vnet_key = "cus_vnet_01"
    }
   
    allow_virtual_network_access = true   
    allow_forwarded_traffic      = true     
    allow_gateway_transit        = false    
    use_remote_gateways          = false
  } 

}
