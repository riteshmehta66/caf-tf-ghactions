
# Store output attributes into keyvault secret
# Those values are used by the rover to connect the current remote state and
# identity the lower level
// dynamic_keyvault_secrets = {
//   eus_kv_01 = {
//     vmadmin-username = {
//       secret_name = "vmadmin-username"
//       value       = "vmadmin-username"
//     }
//     vmadmin-password = {
//       secret_name = "vmadmin-password"
//       value       = "Vmadmin@Password"
//     }
//   }
//   cus_kv_01 = {
//     vmadmin-username = {
//       secret_name = "vmadmin-username"
//       value       = "vmadmin-username"
//     }
//     vmadmin-password = {
//       secret_name = "vmadmin-password"
//       value       = "Vmadmin@Password"
//     }
//   }
// }