resource_groups = {

  // #
  // # Key vault resource groups
  // #


  eus2_pvt_dns_rg_01 = {
    
    name   = "con-sbx-00-ntw-00-00-a-rg-00pdnsz-e2"
    region = "region1"
    tags   = {
      "application name"  = "private dns zones"
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
}







// role_mapping = {
//   built_in_role_mapping = {
//     resource_groups = {
      
//       eus2_kv_rg_01 = {            # This is a key of resource group
//         "Owner" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "793bf7c4-c0dc-4249-ad6d-b5760a47ef62",
//               "fad9da53-6cca-4ba5-9991-618ac073e4f3"
//             ]
//           }
//         }
//         "Contributor" = {
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
//         "Reader" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "fb5b987f-c3a0-4c5f-8e4a-6ee4292f0061",
//               "dc990354-c5c8-4131-99c8-5f8d0bdf429a"
//             ]
//           }
//         }
//       }

//       scus_kv_rg_01 = {            # This is a key of resource group
//         "Owner" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "793bf7c4-c0dc-4249-ad6d-b5760a47ef62",
//               "fad9da53-6cca-4ba5-9991-618ac073e4f3"
//             ]
//           }
//         }
//         "Contributor" = {
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
//         "Reader" = {
//           // logged_in = {
//           //   keys = ["user"]
//           // }
//           object_ids = {
//             keys = [
//               "fb5b987f-c3a0-4c5f-8e4a-6ee4292f0061",
//               "dc990354-c5c8-4131-99c8-5f8d0bdf429a"
//             ]
//           }
//         }
//       }
      
//     }
//   }
// }


