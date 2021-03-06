keyvaults = {
  cert_secrets = {
    name               = "consbxfdpqrakvfd002tste2"
    resource_group_key = "front_door_kv"
    sku_name           = "standard"
    creation_policies = {
      // logged_in_user = {
      //   certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      //   secret_permissions      = ["Set", "Get", "List", "Delete", "Purge"]
      // }
      dev-caf-tf-group-level1 = {
        object_id        = "4c1a4ba5-59eb-4021-996f-0ef57dcba41f"
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
        // key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "d0424dc3-364d-44d5-a3db-3b120a25b8fd"
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
        // key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      // ritesh = {
      //   object_id        = "fe9264d1-7055-45b2-9819-454dd2f99bed"
      //   certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      //   // key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
      //   secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      // }
      // front_door_app = {
      //   object_id        = "5f804554-93be-4ad6-8946-763a67748cde"
      //   certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      //   // key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
      //   secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      // }
    }
  }
}

# Store output attributes into keyvault secret
dynamic_keyvault_secrets = {
  cert_secrets = { # Key of the keyvault
    cert-password = {
      secret_name = "cert-password"
      value       = "P@55w0rd1234"
    }
  }
}

// keyvault_certificate_issuers = {
//   kv_cert_issuer = {
//     issuer_name        = "DummyIssuer"
//     provider_name      = "DigiCert"
//     organization_id    = "ExampleOrg"
//     account_id         = "0000"
//     resource_group_key = "front_door_kv"
//     keyvault_key       = "cert_secrets"
//     cert_password_key  = "cert-password"

//     admin_settings = {
//       admin1 = {
//         first_name    = "cert-admin1"
//         last_name     = "cert-admin1-last-name"
//         email_address = "email1@domain.net"
//         phone_number  = "00000000"
//       } #remove the following block if additional adminss aren't needed.
//       admin2 = {
//         first_name    = "cert-admin2"
//         last_name     = "cert-admin2-last-name"
//         email_address = "email2@domain.net"
//         phone_number  = "00000001"
//       }
//     } #add more admins by repeating the block.
//   }
// }
