# Hub to Hub VNet peering a) true b) true c) false d) false
# spoke to hub a) true b) TO-BE-CHECKED c) false d) true
# Hub to spoke a) true b) true c) true d) false

vnet_peerings = {
  
  ######## eus2 Hub - eus2 Spokes peering #################

  eus2_hubvnet_TO_eus2_mgmt_spoke1 = {
    name = "con-{{configs.environment}}-mgt-ntw-00-00-a-peer-ehmgs1-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "eus2_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_management"
      output_key = "vnets"
      vnet_key = "eus2_vnet_01"
    }
    
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true 
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  
  eus2_hubvnet_TO_eus2_identity_spoke1 = {
    name = "con-{{configs.environment}}-hub-ntw-00-00-a-peer-ehids1-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "eus2_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_identity"
      output_key = "vnets"
      vnet_key = "eus2_vnet_01"
    }
   
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true  
    allow_gateway_transit        = false  
    use_remote_gateways          = false
  }

  
  eus2_hubvnet_TO_eus2_bynlz_spoke1 = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-ehbys1-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      vnet_key = "eus2_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_byn_lz"
      vnet_key = "eus2_vnet_01"
    }
    # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
    allow_virtual_network_access = true
    # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
    allow_forwarded_traffic      = true
    #  false for hub-hub, false for spoke-hub, true for hub-spoke    #### check 
    allow_gateway_transit        = false
    # false for hub-hub, true for spoke-hub, false for hub-spoke  
    use_remote_gateways          = false
  }


  

  eus2_hubvnet_TO_eus2_bynlz_spoke2 = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-ehbys2-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      vnet_key = "eus2_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_byn_lz"
      vnet_key = "eus2_vnet_02"
    }
    # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
    allow_virtual_network_access = true
    # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
    allow_forwarded_traffic      = true
    #  false for hub-hub, false for spoke-hub, true for hub-spoke    #### check 
    allow_gateway_transit        = false
    # false for hub-hub, true for spoke-hub, false for hub-spoke  
    use_remote_gateways          = false
  }


  
  // eus2_hubvnet_TO_eus2_bynlz_spoke3 = {
  //   name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-ehbys3-e2"
  //   from = {
  //     lz_key = "caf_level2_vnets_connectivity"
  //     vnet_key = "eus2_vnet_01"
  //   }
  //   to = {
  //     lz_key = "caf_level2_vnets_byn_lz"
  //     vnet_key = "eus2_vnet_03"
  //   }
    
  //   allow_virtual_network_access = true
  //   allow_forwarded_traffic      = true 
  //   allow_gateway_transit        = false 
  //   use_remote_gateways          = false
  // }


  



  ##########  Hub - Hub peering ####################

  eus2_hubvnet_TO_cus_hubvnet = {
    name = "con-{{configs.environment}}-hub-ntw-00-00-a-peer-e2hch-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "eus2_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "cus_vnet_01"
    }
    # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
    allow_virtual_network_access = true
    # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
    allow_forwarded_traffic      = false
    #  false for hub-hub, false for spoke-hub, true for hub-spoke  
    allow_gateway_transit        = false
    # false for hub-hub, true for spoke-hub, false for hub-spoke  
    use_remote_gateways          = false
  }


  cus_hubvnet_TO_eus2_hubvnet = {
    name = "con-{{configs.environment}}-hub-ntw-00-00-a-peer-che2h-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "cus_vnet_01"
      
    }
    to = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "eus2_vnet_01"
    }
    # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
    allow_virtual_network_access = true
    # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
    allow_forwarded_traffic      = false
    #  false for hub-hub, false for spoke-hub, true for hub-spoke  
    allow_gateway_transit        = false
    # false for hub-hub, true for spoke-hub, false for hub-spoke  
    use_remote_gateways          = false
  }




  ######## cus-Hub to cus-Spokes peering ##############


  cus_hubvnet_TO_cus_mgmt_spoke1 = {
    name = "con-{{configs.environment}}-mgt-ntw-00-00-a-peer-chmgs1-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "cus_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_management"
      output_key = "vnets"
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

  
  cus_hubvnet_TO_cus_identity_spoke1 = {
    name = "con-{{configs.environment}}-idm-ntw-00-00-a-peer-chids1-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"
      output_key = "vnets"
      vnet_key = "cus_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_identity"
      output_key = "vnets"
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

  
  cus_hubvnet_TO_cus_bynlz_spoke1 = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-chbys1-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"      
      vnet_key = "cus_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_byn_lz"      
      vnet_key = "cus_vnet_01"
    }
    # true for all 3 scenarios: hub-hub, spoke-hub, hub-spoke 
    allow_virtual_network_access = true
    # true for hub-hub, TO-BE-CHECKED for spoke-hub, true for hub-spoke
    allow_forwarded_traffic      = true
    #  false for hub-hub, false for spoke-hub, true for hub-spoke    #### check 
    allow_gateway_transit        = false
    # false for hub-hub, true for spoke-hub, false for hub-spoke  
    use_remote_gateways          = false
  }


  
  cus_hubvnet_TO_cus_bynlz_spoke2 = {
    name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-chbys2-e2"
    from = {
      lz_key = "caf_level2_vnets_connectivity"      
      vnet_key = "cus_vnet_01"
    }
    to = {
      lz_key = "caf_level2_vnets_byn_lz"      
      vnet_key = "cus_vnet_02"
    }
    
    allow_virtual_network_access = true    
    allow_forwarded_traffic      = true
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }


  
  // cus_hubvnet_TO_cus_bynlz_spoke3 = {
  //   name = "con-{{configs.environment}}-byn-ntw-00-00-a-peer-chbys3-e2"
  //   from = {
  //     lz_key = "caf_level2_vnets_connectivity"      
  //     vnet_key = "cus_vnet_01"
  //   }
  //   to = {
  //     lz_key = "caf_level2_vnets_byn_lz"      
  //     vnet_key = "cus_vnet_03"
  //   }
    
  //   allow_virtual_network_access = true    
  //   allow_forwarded_traffic      = true
  //   allow_gateway_transit        = false
  //   use_remote_gateways          = false
  // }
 

}