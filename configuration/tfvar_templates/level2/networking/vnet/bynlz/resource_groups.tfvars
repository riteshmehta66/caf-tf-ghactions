
# Resource Groups for Spoke VNets

resource_groups = {

  eus2_vnet_rg_01 = {
    name   = "byn-{{configs.environment}}-00-ss-00-00-a-rg-vnet-e2"
    region = "region1"
    tags   = {
      "application name"  = "shared services mgt"
      "{{configs.environment}} hours" =  "{{configs.tag_value_hours1}}"
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
    name   = "byn-{{configs.environment}}-00-ss-00-00-a-rg-vnet-c1"
    region = "region2"
    tags   = {
      "application name"  = "shared services mgt"
      "{{configs.environment}} hours" =  "{{configs.tag_value_hours1}}"
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
  //   name   = "mhb-az-vx1-{{configs.environment}}-nss-nsg-rg001"
  //   region = "region1"
  //   tags   = {
  //     # "application_id"    = "<sysid>"
  //     "application_id"    = "nss"
  //     "environment"       = "{{configs.environment}}"
  //     "termination_date"  = "NONE"
  //     "created_by"        = "NetworkCloudEngineering@mhb.com"
  //     "stack_name"        = "terraform"
  //     "data_class"        = "yellow"
  //     "name"              = "mhb-az-vx1-{{configs.environment}}-nss-nsg-rg001"
  //     "description"       = "resource group for network security group"
  //   }
  // }

  // cus_nsg_rg_01 = {
  //   name   = "mhb-az-vx1-{{configs.environment}}-nss-nsg-rg002"
  //   region = "region2"
  //   tags   = {
  //     # "application_id"    = "<sysid>"
  //     "application_id"    = "nss"
  //     "environment"       = "{{configs.environment}}"
  //     "termination_date"  = "NONE"
  //     "created_by"        = "NetworkCloudEngineering@mhb.com"
  //     "stack_name"        = "terraform"
  //     "data_class"        = "yellow"
  //     "name"              = "mhb-az-vx1-{{configs.environment}}-nss-nsg-rg002"
  //     "description"       = "resource group for network security group"
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

//       scus_vnet_rg_01 = {            # This is a key of vnet resource group
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

//       scus_nsg_rg_01 = {            # This is a key of nsg resource group
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




