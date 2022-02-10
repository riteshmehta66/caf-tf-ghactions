keyvaults = {
  certificates = {
    name               = "consbxpqraappgwkv00e2"
    resource_group_key = "eus2_appgw_rg_01"
    sku_name           = "standard"

    enabled_for_deployment = true

    creation_policies = {
      // logged_in_user = {
      //   certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Purge", "Recover"]
      //   secret_permissions      = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
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
    }
  }
}

keyvault_access_policies = {
  certificates = {
    apgw_keyvault_secrets = {
      managed_identity_key    = "apgw_keyvault_secrets"
      certificate_permissions = ["Get"]
      secret_permissions      = ["Get"]
    }
  }
}