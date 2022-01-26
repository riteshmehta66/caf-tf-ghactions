resource_groups = {

  eus2_vnet_rg_01 = {
    name   = "idm-sbx-00-idm-00-pqr-a-rg-vnet-e2"
    region = "region1"
    tags   = {
      "application name"  = "identity services"
      "sbx hours" =  "7:30am-7:30pm est wd's"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "sbx"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }
  cus_vnet_rg_01 = {
    name   = "idm-sbx-00-idm-00-pqr-a-rg-vnet-c1"
    region = "region2"
    tags   = {
      "application name"  = "identity services"
      "sbx hours" =  "7:30am-7:30pm est wd's"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "sbx"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

  // eus2_nsg_rg_01 = {
  //   name   = "idm-sbx-00-idm-00-pqr-a-rg-nsg-e2"
  //   region = "region1"  
  // }

  // cus_nsg_rg_01 = {
  //   name   = "idm-sbx-00-idm-00-pqr-a-rg-nsg-c1"
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

//     }
//   }
// }