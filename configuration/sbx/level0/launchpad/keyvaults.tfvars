keyvaults = {
  level0 = {
    name                = "cafsbxcf0pqrastdvop15e2"
    resource_group_key  = "level0"
    sku_name            = "standard"
    soft_delete_enabled = true
    soft_delete_retention_days    = 7
    purge_protection_enabled      = false
    
    
    creation_policies = {
      // logged_in_user = {
      //   # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
      //   # More examples in /examples/keyvault
      //   secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      // }
      dev-caf-tf-group-level0 = {
        object_id        = "70a6b34e-8fe2-4909-8e02-1cdfab529912"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "0eb00271-50f7-4a43-a915-a83d8f837603"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "35e227ea-f27e-40aa-8f03-87f3ecf202e3"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "0fcee476-25b4-438a-9e7e-6b9f24effa76"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "e7e49908-139c-4123-9126-9791396c0502"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dd2cb2c1-f31b-4f27-a896-4529a6983485"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      
    }    

    tags = {
      tfstate     = "level0"
      // environment = "sandpit"      
    }

  }

  level1 = {
    name                = "cafsbxcf1pqrastdvop15e2"
    resource_group_key  = "level1"
    sku_name            = "standard"
    soft_delete_enabled = true
    soft_delete_retention_days    = 7
    purge_protection_enabled      = false
    
    

    creation_policies = {
      // logged_in_user = {
      //   # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
      //   # More examples in /examples/keyvault
      //   secret_permissions = ["Set", "Get", "List", "Delete", "Recover"]
      // }
      dev-caf-tf-group-level0 = {
        object_id        = "70a6b34e-8fe2-4909-8e02-1cdfab529912"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "0eb00271-50f7-4a43-a915-a83d8f837603"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "35e227ea-f27e-40aa-8f03-87f3ecf202e3"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "0fcee476-25b4-438a-9e7e-6b9f24effa76"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "e7e49908-139c-4123-9126-9791396c0502"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dd2cb2c1-f31b-4f27-a896-4529a6983485"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
    }    

    tags = {
      tfstate     = "level1"
      // environment = "sandpit"      
    }
  }

  level2 = {
    name                = "cafsbxcf2pqrastdvop15e2"
    resource_group_key  = "level2"
    sku_name            = "standard"
    soft_delete_enabled = true
    soft_delete_retention_days    = 7
    purge_protection_enabled      = false
    
    
    creation_policies = {
      // logged_in_user = {
      //   # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
      //   # More examples in /examples/keyvault
      //   secret_permissions = ["Set", "Get", "List", "Delete", "Recover"]
      // }
      dev-caf-tf-group-level0 = {
        object_id        = "70a6b34e-8fe2-4909-8e02-1cdfab529912"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "0eb00271-50f7-4a43-a915-a83d8f837603"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "35e227ea-f27e-40aa-8f03-87f3ecf202e3"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "0fcee476-25b4-438a-9e7e-6b9f24effa76"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "e7e49908-139c-4123-9126-9791396c0502"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dd2cb2c1-f31b-4f27-a896-4529a6983485"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
    }   

    tags = {
      tfstate     = "level2"
      // environment = "sandpit"      
    }

  }

  level3 = {
    name                = "cafsbxcf3pqrastdvop15e2"
    resource_group_key  = "level3"
    sku_name            = "standard"
    soft_delete_enabled = true
    soft_delete_retention_days    = 7
    purge_protection_enabled      = false
    
    
    creation_policies = {
      // logged_in_user = {
      //   # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
      //   # More examples in /examples/keyvault
      //   secret_permissions = ["Set", "Get", "List", "Delete", "Recover"]
      // }
      dev-caf-tf-group-level0 = {
        object_id        = "70a6b34e-8fe2-4909-8e02-1cdfab529912"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "0eb00271-50f7-4a43-a915-a83d8f837603"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "35e227ea-f27e-40aa-8f03-87f3ecf202e3"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "0fcee476-25b4-438a-9e7e-6b9f24effa76"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "e7e49908-139c-4123-9126-9791396c0502"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dd2cb2c1-f31b-4f27-a896-4529a6983485"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
    }

    tags = {
      tfstate     = "level3"
      // environment = "sandpit"      
    }

  }

  level4 = {
    name                = "cafsbxcf4pqrastdvop15e2"
    resource_group_key  = "level4"
    sku_name            = "standard"
    soft_delete_enabled = true
    soft_delete_retention_days    = 7
    purge_protection_enabled      = false
    

    creation_policies = {
      // logged_in_user = {
      //   # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
      //   # More examples in /examples/keyvault
      //   secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      // }
      dev-caf-tf-group-level0 = {
        object_id        = "70a6b34e-8fe2-4909-8e02-1cdfab529912"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "0eb00271-50f7-4a43-a915-a83d8f837603"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "35e227ea-f27e-40aa-8f03-87f3ecf202e3"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "0fcee476-25b4-438a-9e7e-6b9f24effa76"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "e7e49908-139c-4123-9126-9791396c0502"
        key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dd2cb2c1-f31b-4f27-a896-4529a6983485"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
    }   

    tags = {
      tfstate     = "level4"
      // environment = "sandpit"      
    }

  }

  // storage_byok = {
  //   name               = "cafsbxstenpqrakvcmk15e2"
  //   resource_group_key = "level0"
  //   sku_name           = "standard"
  //   soft_delete_enabled = true
  //   soft_delete_retention_days    = 7
  //   purge_protection_enabled      = true
    

    

  //   creation_policies = {
  //     // logged_in_user = {
  //     //   # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
  //     //   # More examples in /examples/keyvault
  //     //   key_permissions    = ["get", "create", "delete", "list", "update", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //     //   secret_permissions = ["Set", "Get", "List", "Delete", "Recover"]
  //     // }
  //     dev-caf-tf-group-level0 = {
  //       object_id        = "70a6b34e-8fe2-4909-8e02-1cdfab529912"
  //       key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Set", "Get", "List", "Delete", "Recover"]
  //     }
  //     dev-caf-tf-group-level1 = {
  //       object_id        = "0eb00271-50f7-4a43-a915-a83d8f837603"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level1_mg = {
  //       object_id        = "35e227ea-f27e-40aa-8f03-87f3ecf202e3"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level2 = {
  //       object_id        = "0fcee476-25b4-438a-9e7e-6b9f24effa76"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level3 = {
  //       object_id        = "e7e49908-139c-4123-9126-9791396c0502"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level4 = {
  //       object_id        = "dd2cb2c1-f31b-4f27-a896-4529a6983485"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }      
  //     caf-launchpad-kv-cmk = {
  //       object_id        = "70a6b34e-8fe2-4909-8e02-1cdfab529912"
  //       key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Set", "Get", "List", "Delete", "Recover"]
  //     }
  //   }    
  // }
}

// keyvault_access_policies = {
//   # A maximum of 16 access policies per keyvault
//   storage_byok = {
//     level0 = {
//       storage_account_key = "level0"
//       key_permissions     = ["get", "create", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
//       secret_permissions  = ["Set", "Get", "List", "Delete", "Recover"]
//     }
//     level1 = {
//       storage_account_key = "level1"
//       key_permissions     = ["get", "create", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
//       secret_permissions  = ["Set", "Get", "List", "Delete", "Recover"]
//     }
//     level2 = {
//       storage_account_key = "level2"
//       key_permissions     = ["get", "create", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
//       secret_permissions  = ["Set", "Get", "List", "Delete", "Recover"]
//     }
//     level3 = {
//       storage_account_key = "level3"
//       key_permissions     = ["get", "create", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
//       secret_permissions  = ["Set", "Get", "List", "Delete", "Recover"]
//     }
//     level4 = {
//       storage_account_key = "level4"
//       key_permissions     = ["get", "create", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
//       secret_permissions  = ["Set", "Get", "List", "Delete", "Recover"]
//     }
//   }
// }

// keyvault_keys = {
//   launchpad_level0 = {
//     resource_group_key = "level0"
//     name               = "storage-launchpad-level0"
//     keyvault_key       = "storage_byok"
//     key_type           = "RSA"
//     key_size           = 2048
//     key_opts           = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
//   }
//   launchpad_level1 = {
//     resource_group_key = "level1"
//     name               = "storage-launchpad-level1"
//     keyvault_key       = "storage_byok"
//     key_type           = "RSA"
//     key_size           = 2048
//     key_opts           = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
//   }
//   launchpad_level2 = {
//     resource_group_key = "level2"
//     name               = "storage-launchpad-level2"
//     keyvault_key       = "storage_byok"
//     key_type           = "RSA"
//     key_size           = 2048
//     key_opts           = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
//   }
//   launchpad_level3 = {
//     resource_group_key = "level3"
//     name               = "storage-launchpad-level3"
//     keyvault_key       = "storage_byok"
//     key_type           = "RSA"
//     key_size           = 2048
//     key_opts           = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
//   }
//   launchpad_level4 = {
//     resource_group_key = "level4"
//     name               = "storage-launchpad-level4"
//     keyvault_key       = "storage_byok"
//     key_type           = "RSA"
//     key_size           = 2048
//     key_opts           = ["decrypt", "encrypt", "sign", "unwrapKey", "verify", "wrapKey"]
//   }
// }