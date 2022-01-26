
private_dns = {
  
  keyvault_01 = {
    name               = "privatelink.vaultcore.azure.net"            # use <keyvault_name>.vault.azure.net to test. It should resolve to <keyvault_name>.privatelink.vaultcore.azure.net
    resource_group_key = "eus2_pvt_dns_rg_01"

    records = {
    
      // a_records = {
        
      //   testa1 = {
      //     name    = "*"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //   }
      //   testa2 = {
      //     name    = "@"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //     email   = "test@contoso.com"
      //   }

      //   // idsp-azeusvx1tstkv011 = {
      //   //   name    = "idsp-azeusvx1tstkv011"
      //   //   ttl     = 3600
      //   //   records = ["10.127.130.4"]
      //   // }
      // }

      // txt_records = {
      //   testtxt1 = {
      //     name = "testtxt1"
      //     ttl  = 3600
      //     records = {
      //       r1 = {
      //         value = "testing txt 1"
      //       }
      //       r2 = {
      //         value = "testing txt 2"
      //       }
      //     }
      //   }
      // }
    }

    vnet_links = {
      
      // eus2_vnet_01_connectivity = {
      //   name      = "eus2_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_connectivity = {
      //   name      = "cus_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_management = {
      //   name      = "eus2_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_management = {
      //   name      = "cus_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_identity = {
      //   name      = "eus2_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_identity = {
      //   name      = "cus_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "cus_vnet_01"
      // }

      eus2_vnet_01_byn_lz = {
        name      = "eus2_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_01"
      }

      cus_vnet_01_byn_lz = {
        name      = "cus_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_01"
      }

      eus2_vnet_02_byn_lz = {
        name      = "eus2_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_02"
      }

      cus_vnet_02_byn_lz = {
        name      = "cus_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_02"
      }    
    }
  }

  storageaccount_01 = {
    name               = "privatelink.blob.core.windows.net"
    resource_group_key = "eus2_pvt_dns_rg_01"

    records = {
      // a_records = {
        
      //   testa1 = {
      //     name    = "*"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //   }
      //   testa2 = {
      //     name    = "@"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //   }

      //   // idsp-azeusvx1tstkv011 = {
      //   //   name    = "idsp-azeusvx1tstkv011"
      //   //   ttl     = 3600
      //   //   records = ["10.127.130.4"]
      //   // }

      // }

      // txt_records = {
      //   testtxt1 = {
      //     name = "testtxt1"
      //     ttl  = 3600
      //     records = {
      //       r1 = {
      //         value = "testing txt 1"
      //       }
      //       r2 = {
      //         value = "testing txt 2"
      //       }
      //     }
      //   }
      // }
    }

    vnet_links = {
      
      // eus2_vnet_01_connectivity = {
      //   name      = "eus2_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_connectivity = {
      //   name      = "cus_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_management = {
      //   name      = "eus2_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_management = {
      //   name      = "cus_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_identity = {
      //   name      = "eus2_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_identity = {
      //   name      = "cus_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "cus_vnet_01"
      // }

      eus2_vnet_01_byn_lz = {
        name      = "eus2_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_01"
      }

      cus_vnet_01_byn_lz = {
        name      = "cus_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_01"
      }

      eus2_vnet_02_byn_lz = {
        name      = "eus2_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_02"
      }

      cus_vnet_02_byn_lz = {
        name      = "cus_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_02"
      }    
    }
  }

  acr_01 = {
    name               = "privatelink.azurecr.io"
    resource_group_key = "eus2_pvt_dns_rg_01"

    records = {
      // a_records = {
        
      //   testa1 = {
      //     name    = "*"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //   }
      //   testa2 = {
      //     name    = "@"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //   }

      //   // idsp-azeusvx1tstkv011 = {
      //   //   name    = "idsp-azeusvx1tstkv011"
      //   //   ttl     = 3600
      //   //   records = ["10.127.130.4"]
      //   // }

      // }

      // txt_records = {
      //   testtxt1 = {
      //     name = "testtxt1"
      //     ttl  = 3600
      //     records = {
      //       r1 = {
      //         value = "testing txt 1"
      //       }
      //       r2 = {
      //         value = "testing txt 2"
      //       }
      //     }
      //   }
      // }
    }

    vnet_links = {

      // eus2_vnet_01_connectivity = {
      //   name      = "eus2_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_connectivity = {
      //   name      = "cus_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_management = {
      //   name      = "eus2_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_management = {
      //   name      = "cus_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_identity = {
      //   name      = "eus2_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_identity = {
      //   name      = "cus_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "cus_vnet_01"
      // }

      eus2_vnet_01_byn_lz = {
        name      = "eus2_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_01"
      }

      cus_vnet_01_byn_lz = {
        name      = "cus_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_01"
      }

      eus2_vnet_02_byn_lz = {
        name      = "eus2_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_02"
      }

      cus_vnet_02_byn_lz = {
        name      = "cus_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_02"
      }    
    }
  }

  eventgrid_domain_01 = {
    name               = "privatelink.eventgrid.azure.net"
    resource_group_key = "eus2_pvt_dns_rg_01"

    records = {
      // a_records = {
        
      //   testa1 = {
      //     name    = "*"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //   }
      //   testa2 = {
      //     name    = "@"
      //     ttl     = 3600
      //     records = ["1.1.1.1", "2.2.2.2"]
      //   }

      //   // idsp-azeusvx1tstkv011 = {
      //   //   name    = "idsp-azeusvx1tstkv011"
      //   //   ttl     = 3600
      //   //   records = ["10.127.130.4"]
      //   // }

      // }

      // txt_records = {
      //   testtxt1 = {
      //     name = "testtxt1"
      //     ttl  = 3600
      //     records = {
      //       r1 = {
      //         value = "testing txt 1"
      //       }
      //       r2 = {
      //         value = "testing txt 2"
      //       }
      //     }
      //   }
      // }
    }

    vnet_links = {
      
      // eus2_vnet_01_connectivity = {
      //   name      = "eus2_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_connectivity = {
      //   name      = "cus_vnet_01_connectivity"
      //   lz_key    = "caf_level2_vnets_connectivity"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_management = {
      //   name      = "eus2_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_management = {
      //   name      = "cus_vnet_01_management"
      //   lz_key    = "caf_level2_vnets_management"
      //   vnet_key  = "cus_vnet_01"
      // }

      // eus2_vnet_01_identity = {
      //   name      = "eus2_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "eus2_vnet_01"
      // }

      // cus_vnet_01_identity = {
      //   name      = "cus_vnet_01_identity"
      //   lz_key    = "caf_level2_vnets_identity"
      //   vnet_key  = "cus_vnet_01"
      // }

      eus2_vnet_01_byn_lz = {
        name      = "eus2_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_01"
      }

      cus_vnet_01_byn_lz = {
        name      = "cus_vnet_01_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_01"
      }

      eus2_vnet_02_byn_lz = {
        name      = "eus2_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "eus2_vnet_02"
      }

      cus_vnet_02_byn_lz = {
        name      = "cus_vnet_02_byn_lz"
        lz_key    = "caf_level2_vnets_byn_lz"
        vnet_key  = "cus_vnet_02"
      }    
    }
  }

  // eus2_backup_01 = {
  //   name               = "privatelink.eastus.backup.windowsazure.com"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }

  //       // idsp-azeusvx1tstkv011 = {
  //       //   name    = "idsp-azeusvx1tstkv011"
  //       //   ttl     = 3600
  //       //   records = ["10.127.130.4"]
  //       // }

  //     }

  //     // txt_records = {
  //     //   testtxt1 = {
  //     //     name = "testtxt1"
  //     //     ttl  = 3600
  //     //     records = {
  //     //       r1 = {
  //     //         value = "testing txt 1"
  //     //       }
  //     //       r2 = {
  //     //         value = "testing txt 2"
  //     //       }
  //     //     }
  //     //   }
  //     // }
  //   }

  //   vnet_links = {
  //     eus2_vnet_01_connectivity = {
  //       name      = "eus2_vnet_01_connectivity"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     eus2_vnet_01_identity = {
  //       name      = "eus2_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     # link_hub = {
  //     #   name = "hub-vnet-link"
  //     #   remote_tfstate = {
  //     #     tfstate_key = "networking_hub"
  //     #     lz_key      = "networking_hub"
  //     #     output_key  = "vnets"
  //     #     vnet_key    = "hub_rg1"
  //     #   }
  //     # }
  //   }
  // }

  // scus_backup_01 = {
  //   name               = "privatelink.southcentralus.backup.windowsazure.com"
  //   resource_group_key = "scus_pvt_dns_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }

  //       // idsp-azeusvx1tstkv011 = {
  //       //   name    = "idsp-azeusvx1tstkv011"
  //       //   ttl     = 3600
  //       //   records = ["10.127.130.4"]
  //       // }

  //     }

  //     // txt_records = {
  //     //   testtxt1 = {
  //     //     name = "testtxt1"
  //     //     ttl  = 3600
  //     //     records = {
  //     //       r1 = {
  //     //         value = "testing txt 1"
  //     //       }
  //     //       r2 = {
  //     //         value = "testing txt 2"
  //     //       }
  //     //     }
  //     //   }
  //     // }
  //   }

  //   vnet_links = {
  //     scus_vnet_01_network = {
  //       name      = "scus_vnet_01_network"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     scus_vnet_01_identity = {
  //       name      = "scus_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     # link_hub = {
  //     #   name = "hub-vnet-link"
  //     #   remote_tfstate = {
  //     #     tfstate_key = "networking_hub"
  //     #     lz_key      = "networking_hub"
  //     #     output_key  = "vnets"
  //     #     vnet_key    = "hub_rg1"
  //     #   }
  //     # }
  //   }
  // }

  // eus2_rsv_01 = {
  //   name               = "eastus.privatelink.siterecovery.windowsazure.com"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }

  //       // idsp-azeusvx1tstkv011 = {
  //       //   name    = "idsp-azeusvx1tstkv011"
  //       //   ttl     = 3600
  //       //   records = ["10.127.130.4"]
  //       // }

  //     }

  //     // txt_records = {
  //     //   testtxt1 = {
  //     //     name = "testtxt1"
  //     //     ttl  = 3600
  //     //     records = {
  //     //       r1 = {
  //     //         value = "testing txt 1"
  //     //       }
  //     //       r2 = {
  //     //         value = "testing txt 2"
  //     //       }
  //     //     }
  //     //   }
  //     // }
  //   }

  //   vnet_links = {
  //     eus2_vnet_01_connectivity = {
  //       name      = "eus2_vnet_01_connectivity"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     eus2_vnet_01_identity = {
  //       name      = "eus2_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     # link_hub = {
  //     #   name = "hub-vnet-link"
  //     #   remote_tfstate = {
  //     #     tfstate_key = "networking_hub"
  //     #     lz_key      = "networking_hub"
  //     #     output_key  = "vnets"
  //     #     vnet_key    = "hub_rg1"
  //     #   }
  //     # }
  //   }
  // }

  // scus_rsv_01 = {
  //   name               = "southcentralus.privatelink.siterecovery.windowsazure.com"
  //   resource_group_key = "scus_pvt_dns_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }

  //       // idsp-azeusvx1tstkv011 = {
  //       //   name    = "idsp-azeusvx1tstkv011"
  //       //   ttl     = 3600
  //       //   records = ["10.127.130.4"]
  //       // }

  //     }

  //     // txt_records = {
  //     //   testtxt1 = {
  //     //     name = "testtxt1"
  //     //     ttl  = 3600
  //     //     records = {
  //     //       r1 = {
  //     //         value = "testing txt 1"
  //     //       }
  //     //       r2 = {
  //     //         value = "testing txt 2"
  //     //       }
  //     //     }
  //     //   }
  //     // }
  //   }

  //   vnet_links = {
  //     scus_vnet_01_network = {
  //       name      = "scus_vnet_01_network"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     scus_vnet_01_identity = {
  //       name      = "scus_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     # link_hub = {
  //     #   name = "hub-vnet-link"
  //     #   remote_tfstate = {
  //     #     tfstate_key = "networking_hub"
  //     #     lz_key      = "networking_hub"
  //     #     output_key  = "vnets"
  //     #     vnet_key    = "hub_rg1"
  //     #   }
  //     # }
  //   }
  // }

  // event_hub_01 = {
  //   name               = "privatelink.servicebus.windows.net"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }

  //       // idsp-azeusvx1tstkv011 = {
  //       //   name    = "idsp-azeusvx1tstkv011"
  //       //   ttl     = 3600
  //       //   records = ["10.127.130.4"]
  //       // }

  //     }

  //     // txt_records = {
  //     //   testtxt1 = {
  //     //     name = "testtxt1"
  //     //     ttl  = 3600
  //     //     records = {
  //     //       r1 = {
  //     //         value = "testing txt 1"
  //     //       }
  //     //       r2 = {
  //     //         value = "testing txt 2"
  //     //       }
  //     //     }
  //     //   }
  //     // }
  //   }

  //   vnet_links = {
  //     eus2_vnet_01_connectivity = {
  //       name      = "eus2_vnet_01_connectivity"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     eus2_vnet_01_identity = {
  //       name      = "eus2_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     scus_vnet_01_network = {
  //       name      = "scus_vnet_01_network"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     scus_vnet_01_identity = {
  //       name      = "scus_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     # link_hub = {
  //     #   name = "hub-vnet-link"
  //     #   remote_tfstate = {
  //     #     tfstate_key = "networking_hub"
  //     #     lz_key      = "networking_hub"
  //     #     output_key  = "vnets"
  //     #     vnet_key    = "hub_rg1"
  //     #   }
  //     # }
  //   }
  // }

  // automation_01 = {
  //   name               = "privatelink.azure-automation.net"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }

  //       // idsp-azeusvx1tstkv011 = {
  //       //   name    = "idsp-azeusvx1tstkv011"
  //       //   ttl     = 3600
  //       //   records = ["10.127.130.4"]
  //       // }

  //     }

  //     // txt_records = {
  //     //   testtxt1 = {
  //     //     name = "testtxt1"
  //     //     ttl  = 3600
  //     //     records = {
  //     //       r1 = {
  //     //         value = "testing txt 1"
  //     //       }
  //     //       r2 = {
  //     //         value = "testing txt 2"
  //     //       }
  //     //     }
  //     //   }
  //     // }
  //   }

  //   vnet_links = {
  //     eus2_vnet_01_connectivity = {
  //       name      = "eus2_vnet_01_connectivity"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     eus2_vnet_01_identity = {
  //       name      = "eus2_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "eus2_vnet_01"
  //     }

  //     scus_vnet_01_network = {
  //       name      = "scus_vnet_01_network"
  //       lz_key    = "caf_level2_vnets_connectivity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     scus_vnet_01_identity = {
  //       name      = "scus_vnet_01_identity"
  //       lz_key    = "caf_networking_vnets_identity"
  //       vnet_key  = "scus_vnet_01"
  //     }

  //     # link_hub = {
  //     #   name = "hub-vnet-link"
  //     #   remote_tfstate = {
  //     #     tfstate_key = "networking_hub"
  //     #     lz_key      = "networking_hub"
  //     #     output_key  = "vnets"
  //     #     vnet_key    = "hub_rg1"
  //     #   }
  //     # }
  //   }
  // }

  // monitor_01 = {
  //   name               = "privatelink.monitor.azure.com"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //    }
  // }

  // oms_opsinsights_01 = {
  //   name               = "privatelink.oms.opinsights.azure.com"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //    }
  // }

  // ods_opsinsights_01 = {
  //   name               = "privatelink.ods.opinsights.azure.com"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //    }
  // }

  // agentsvc_azure_automation = {
  //   name               = "privatelink.agentsvc.azure.automation.net"
  //   resource_group_key = "eus2_pvt_dns_rg_01"

  //   records = {
  //     a_records = {
        
  //       testa1 = {
  //         name    = "*"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //       testa2 = {
  //         name    = "@"
  //         ttl     = 3600
  //         records = ["1.1.1.1", "2.2.2.2"]
  //       }
  //    }
  // } 

}