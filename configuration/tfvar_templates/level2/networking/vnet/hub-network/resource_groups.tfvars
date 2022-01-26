
resource_groups = {
  eus2_vnet_rg_01 = {
    name   = "con-{{configs.environment}}-hub-ntw-00-00-a-rg-vnet-e2"
    region = "region1"
    tags   = {
      "application name"  = "network hub"
      "{{configs.environment}} hours" =  "7am-7pm EST WD's"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "mhb"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

  cus_vnet_rg_01 = {
    name   = "con-{{configs.environment}}-hub-ntw-00-00-a-rg-vnet-c1"
    region = "region2"
    tags   = {
      "application name"  = "network hub"
      "{{configs.environment}} hours" =  "7am-7pm EST WD's"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "mhb"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

# Resource Groups for NSG's

  // eus2_nsg_rg_01 = {
  //   name   = "mhb-az-nt-{{configs.environment}}-nss-nsg-rg-001"
  //   region = "region1" 
  // }

  // cus_nsg_rg_01 = {
  //   name   = "mhb-az-nt-{{configs.environment}}-nss-nsg-rg-002"
  //   region = "region2"  
  // }
}



// role_mapping = {
//   built_in_role_mapping = {
//     resource_groups = {
//       eus2_vnet_rg_01 = {            # This is a key of vnet resource group
//         "Network Contributor" = {
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

//       cus_vnet_rg_01 = {            # This is a key of vnet resource group
//         "Network Contributor" = {
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


//       eus2_nsg_rg_01 = {            # This is a key of nsg resource group
//         "Network Contributor" = {
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

//       cus_nsg_rg_01 = {            # This is a key of nsg resource group
//         "Network Contributor" = {
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

//       eus2_nva_rg_01 = {            # This is a key of nva resource group
        
//         "Network Contributor" = {
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

//       cus_nva_rg_01 = {            # This is a key of nva resource group
        
//         "Network Contributor" = {
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
