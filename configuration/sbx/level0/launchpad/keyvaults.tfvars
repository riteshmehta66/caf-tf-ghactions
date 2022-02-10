keyvaults = {
  level0 = {
    name                = "cafsbxcf0pqrakvdvop00e2"
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
        object_id        = "45f99ca0-f156-4fdc-ba87-d8fbb4633f40"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "4c1a4ba5-59eb-4021-996f-0ef57dcba41f"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "f7e6ee0c-c889-48f8-bc87-4292588e8c0b"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "562df38e-7da7-4c49-8fbf-a3813bd93931"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "d0424dc3-364d-44d5-a3db-3b120a25b8fd"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      
    }    

    tags = {
      tfstate     = "level0"
      // environment = "sandpit"      
    }

  }

  level1 = {
    name                = "cafsbxcf1pqrakvdvop00e2"
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
        object_id        = "45f99ca0-f156-4fdc-ba87-d8fbb4633f40"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "4c1a4ba5-59eb-4021-996f-0ef57dcba41f"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "f7e6ee0c-c889-48f8-bc87-4292588e8c0b"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "562df38e-7da7-4c49-8fbf-a3813bd93931"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "d0424dc3-364d-44d5-a3db-3b120a25b8fd"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
    }    

    tags = {
      tfstate     = "level1"
      // environment = "sandpit"      
    }
  }

  level2 = {
    name                = "cafsbxcf2pqrakvdvop00e2"
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
        object_id        = "45f99ca0-f156-4fdc-ba87-d8fbb4633f40"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "4c1a4ba5-59eb-4021-996f-0ef57dcba41f"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "f7e6ee0c-c889-48f8-bc87-4292588e8c0b"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "562df38e-7da7-4c49-8fbf-a3813bd93931"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "d0424dc3-364d-44d5-a3db-3b120a25b8fd"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
    }   

    tags = {
      tfstate     = "level2"
      // environment = "sandpit"      
    }

  }

  level3 = {
    name                = "cafsbxcf3pqrakvdvop00e2"
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
        object_id        = "45f99ca0-f156-4fdc-ba87-d8fbb4633f40"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "4c1a4ba5-59eb-4021-996f-0ef57dcba41f"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "f7e6ee0c-c889-48f8-bc87-4292588e8c0b"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "562df38e-7da7-4c49-8fbf-a3813bd93931"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "d0424dc3-364d-44d5-a3db-3b120a25b8fd"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
    }

    tags = {
      tfstate     = "level3"
      // environment = "sandpit"      
    }

  }

  level4 = {
    name                = "cafsbxcf4pqrakvdvop00e2"
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
        object_id        = "45f99ca0-f156-4fdc-ba87-d8fbb4633f40"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1 = {
        object_id        = "4c1a4ba5-59eb-4021-996f-0ef57dcba41f"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level1_mg = {
        object_id        = "f7e6ee0c-c889-48f8-bc87-4292588e8c0b"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level2 = {
        object_id        = "562df38e-7da7-4c49-8fbf-a3813bd93931"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level3 = {
        object_id        = "d0424dc3-364d-44d5-a3db-3b120a25b8fd"
        key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
        secret_permissions = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      }
      dev-caf-tf-group-level4 = {
        object_id        = "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
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
  //   name               = "cafsbxstenpqrakvcmk00e2"
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
  //       object_id        = "45f99ca0-f156-4fdc-ba87-d8fbb4633f40"
  //       key_permissions    = ["get", "create", "delete", "list", "restore", "recover", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Set", "Get", "List", "Delete", "Recover"]
  //     }
  //     dev-caf-tf-group-level1 = {
  //       object_id        = "4c1a4ba5-59eb-4021-996f-0ef57dcba41f"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level1_mg = {
  //       object_id        = "f7e6ee0c-c889-48f8-bc87-4292588e8c0b"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level2 = {
  //       object_id        = "562df38e-7da7-4c49-8fbf-a3813bd93931"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level3 = {
  //       object_id        = "d0424dc3-364d-44d5-a3db-3b120a25b8fd"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }
  //     dev-caf-tf-group-level4 = {
  //       object_id        = "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
  //       key_permissions    = ["get", "list", "unwrapkey", "wrapkey", "encrypt", "decrypt", "sign", "verify"]
  //       secret_permissions = ["Get", "List"]
  //     }      
  //     caf-launchpad-kv-cmk = {
  //       object_id        = "45f99ca0-f156-4fdc-ba87-d8fbb4633f40"
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