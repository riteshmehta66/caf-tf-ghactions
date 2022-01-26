
resource_groups = {

  // #
  // # Log Analytics resource groups
  // #

  eus2_la_rg_01 = {
    name   = "mgt-{{configs.environment}}-00-log-00-00-a-rg-00-e2"
    region = "region1"
    tags   = {
      "application name"  = "shared services mgt"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
    # Include this in aztfmod Issue 
    // resource_lock = {
    //   name = "lock for Log Analytics Resource Group"
    //   lock_level = "CanNotDelete"
    //   notes = "locked to prevent accidental deletion. Remove lock to delete"
    // }
  }

  cus_la_rg_01 = {
    name   = "mgt-{{configs.environment}}-00-log-00-00-a-rg-00-c1"
    region = "region2"
    tags   = {
      "application name"  = "shared services mgt"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

  
  // #
  // # Storage accounts resource groups
  // #


  eus2_std_rg_01 = {
    name   = "mgt-{{configs.environment}}-00-st-00-00-a-rg-stdiag-e2"
    region = "region1"
    tags   = {
      "application name"  = "shared services mgt"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }


  cus_std_rg_01 = {
    name   = "mgt-{{configs.environment}}-00-st-00-00-a-rg-stdiag-c1"
    region = "region2"
    tags   = {
      "application name"  = "shared services mgt"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

  // #
  // # Key vault resource groups
  // #


  // eus2_kv_rg_01 = {
  //   name   = "mgt-{{configs.environment}}-00-kv-00-00-a-rg-kvcmk-e2"
  //   region = "region1"
  //   tags   = {
  //     "application name"  = "shared services mgt"
  //     "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
  //     "business unit"  =  "sre"
  //     "cost center"  =  "26839-200100"
  //     "environment type" =  "{{configs.environment}}"
  //     "operations team" =  "tech services"
  //     "owner name" = "thomas.stokkeland@mobileheartbeat.com "
  //     "customer name"  =  "pqr"
  //     "customer contact"  =  "chris.sego@mobileheartbeat.com"
  //     "data classification"  =  "confidential"
  //   }
  // }

  // cus_kv_rg_01 = {
  //   name   = "mgt-{{configs.environment}}-00-kv-00-00-a-rg-kvcmk-c1"
  //   region = "region2"
  //   tags   = {
  //     "application name"  = "shared services mgt"
  //     "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
  //     "business unit"  =  "sre"
  //     "cost center"  =  "26839-200100"
  //     "environment type" =  "{{configs.environment}}"
  //     "operations team" =  "tech services"
  //     "owner name" = "thomas.stokkeland@mobileheartbeat.com "
  //     "customer name"  =  "pqr"
  //     "customer contact"  =  "chris.sego@mobileheartbeat.com"
  //     "data classification"  =  "confidential"
  //   }
  // }

  
  // #
  // # Event hubs resource groups
  // #


  // eus2_evh_rg_01 = {
  //   name   = "pqr-az-ss-{{configs.environment}}-spk-evh-rg001"
  //   region = "region1"
  //   tags   = {
  //     # "application_id"    =  "<sysid>"
  //     "application_id"    =  "spk"
  //     "environment"       = "{{configs.environment}}"
  //     "termination_date"  = "NONE"
  //     "created_by"        = "splunkage@pqr.com"
  //     "stack_name"        = "terraform"
  //     "data_class"        = "yellow"
  //     "name"              = "pqr-az-ss-{{configs.environment}}-spk-evh-rg001"
  //     "description"       = "resource group for monitoring"
  //   }
  // }


  // cus_evh_rg_01 = {
  //   name   = "pqr-az-ss-{{configs.environment}}-spk-evh-rg002"
  //   region = "region2"
  //   tags   = {
  //     # "application_id"  =  "<sysid>"
  //     "application_id"    =  "spk"
  //     "environment"       = "{{configs.environment}}"
  //     "termination_date"  = "NONE"
  //     "created_by"        = "splunkage@pqr.com"
  //     "stack_name"        = "terraform"
  //     "data_class"        = "yellow"
  //     "name"              = "pqr-az-ss-{{configs.environment}}-spk-evh-rg002"
  //     "description"       = "resource group for monitoring"
  //   }
  // }  

}




// role_mapping = {
//   built_in_role_mapping = {
//     resource_groups = {
//       eus2_la_rg_01 = {            # This is a key of resource group
//         "Monitoring Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//         "Log Analytics Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
       
//       }

//       cus_la_rg_01 = {            # This is a key of resource group
//         "Monitoring Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//         "Log Analytics Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//       }

//       eus2_evh_rg_01 = {            # This is a key of resource group
//         "Azure Event Hubs Data Owner" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//       }

//       cus_evh_rg_01 = {            # This is a key of resource group
//         "Azure Event Hubs Data Owner" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//       }
     
//       eus2_std_rg_01 = {            # This is a key of resource group
//         "Storage Account Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//         "Storage Blob Data Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//       }

//       cus_std_rg_01 = {            # This is a key of resource group
//         "Storage Account Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//         "Storage Blob Data Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//       }

//       eus2_kv_rg_01 = {            # This is a key of resource group
//         "Key Vault Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//       }

//       cus_kv_rg_01 = {            # This is a key of resource group
//         "Key Vault Contributor" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "331ffa51-d7c2-4c25-9335-89ee061330bf", 
//               "2ea1c34b-dc6d-4bf8-9e03-30081b8f5ae2"
//             ]
//           }
//         }
//       }
//     }
//   }

// }

