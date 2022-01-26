
resource_groups = {
  front_door = {
    name   = "con-sbx-fd-ntw-00-00-a-rg-fd-00-e2"
    region = "region1"
    tags   = {
      "application name"  = "front door"
      "sbx hours" =  "7am-7pm EST WD's"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "sbx"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "mhb"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

  ### Frontdoor is global resource so need to be deployed only at single location
  // cus_fd_rg_01 = {
  //   name   = "con-sbx-fd-ntw-00-00-a-rg-fd-00-c1"
  //   region = "region2"
  //   tags   = {
  //     "application name"  = "front door"
  //     "sbx hours" =  "7am-7pm EST WD's"
  //     "business unit"  =  "sre"
  //     "cost center"  =  "26839-200100"
  //     "environment type" =  "sbx"
  //     "operations team" =  "tech services"
  //     "owner name" = "thomas.stokkeland@mobileheartbeat.com "
  //     "customer name"  =  "mhb"
  //     "customer contact"  =  "chris.sego@mobileheartbeat.com"
  //     "data classification"  =  "confidential"
  //   }
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