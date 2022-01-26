
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#
role_mapping = {
  built_in_role_mapping = {
    storage_accounts = {
      level0 = {
        "Storage Blob Data Contributor" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_sa_level0_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_mg_group1_oid}}",
              "{{configs.caf_launchpad_sa_level2_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level3_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level4_access_policy_group1_oid}}"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "{{configs.caf_launchpad_sa_level1_access_policy_group1_oid}}" 
        //     ]
        //   }
        // }
      }
      level1 = {
        "Storage Blob Data Contributor" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_sa_level0_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_mg_group1_oid}}",
              "{{configs.caf_launchpad_sa_level2_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level3_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level4_access_policy_group1_oid}}"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "{{configs.caf_launchpad_sa_level2_access_policy_group1_oid}}" 
        //     ]
        //   }
        // }
      }
      level2 = {
        "Storage Blob Data Contributor" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_sa_level0_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_mg_group1_oid}}",
              "{{configs.caf_launchpad_sa_level2_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level3_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level4_access_policy_group1_oid}}"
            ]
          }    
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "{{configs.caf_launchpad_sa_level3_access_policy_group1_oid}}" 
        //     ]
        //   }
        // }
      }
      level3 = {
        "Storage Blob Data Contributor" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_sa_level0_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_mg_group1_oid}}",
              "{{configs.caf_launchpad_sa_level2_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level3_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level4_access_policy_group1_oid}}"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "{{configs.caf_launchpad_sa_level4_access_policy_group1_oid}}" 
        //     ]
        //   }
        // }
      }
      level4 = {
        "Storage Blob Data Contributor" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_sa_level0_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level1_access_policy_mg_group1_oid}}",
              "{{configs.caf_launchpad_sa_level2_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level3_access_policy_group1_oid}}",
              "{{configs.caf_launchpad_sa_level4_access_policy_group1_oid}}"
            ]
          }
        }
      }
    }
    
    resource_groups = {
      level0 = {
        "Owner" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_rg_level0_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_mg_group1_oid}}",
              "{{configs.caf_launchpad_rg_level2_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level3_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level4_rbac_group1_oid}}"
            ]
          }
        }
      }
      level1 = {
        "Owner" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_rg_level0_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_mg_group1_oid}}",
              "{{configs.caf_launchpad_rg_level2_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level3_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level4_rbac_group1_oid}}"
            ]
          }
        }
      }
      level2 = {
        "Owner" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_rg_level0_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_mg_group1_oid}}",
              "{{configs.caf_launchpad_rg_level2_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level3_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level4_rbac_group1_oid}}"
            ]
          }     
        }
      }
      level3 = {
        "Owner" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_rg_level0_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_mg_group1_oid}}",
              "{{configs.caf_launchpad_rg_level2_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level3_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level4_rbac_group1_oid}}"
            ]
          }
        }
      }
      level4 = {
        "Owner" = {
          // logged_in = {
          //   keys = ["user"]
          // }
          object_ids = {
            keys = [
              "{{configs.caf_launchpad_rg_level0_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level1_rbac_mg_group1_oid}}",
              "{{configs.caf_launchpad_rg_level2_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level3_rbac_group1_oid}}",
              "{{configs.caf_launchpad_rg_level4_rbac_group1_oid}}"
            ]
          }
        }
      }
    }
  }

}