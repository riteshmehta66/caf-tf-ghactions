// frontdoor_custom_https_configuration = {
//   fchc1 = {
//     frontend_endpoint = {
//       #id = ""
//       front_door_key = "front_door1"
//       name           = "exampleFrontendEndpoint1"
//     }
//     custom_https_provisioning_enabled = true
//     // custom_https_configuration = {
//     //   certificate_source = "FrontDoor" #FrontDoor or AzureKeyVault.
//     //   #keyvault = {
//     //   #  #id = ""
//     //   #  key = "cert_secrets"
//     //   #  #lz_key = ""
//     //   #  secret_name = "cert-admin1"
//     //   #  #secret_version = ""
//     //   #}
//     // }
//     custom_https_configuration = {
//       certificate_source = "AzureKeyVault" #FrontDoor or AzureKeyVault.
//       keyvault = {
//         #id = ""
//         keyvault_lz_key = "caf_level3_frontdoor_keyvault_connectivity"
//       #  lz_key = "caf_level3_frontdoor_keyvault_connectivity"
//         key = "cert_secrets"
//         secret_name = "cert-password"
//         secret_version = "ced56a6f62dd4c72a87d67bde9a02e34"
//       }
//     }
//   }
// }
