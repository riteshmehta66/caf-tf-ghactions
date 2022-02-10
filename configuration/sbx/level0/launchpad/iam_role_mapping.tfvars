
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
        //       "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
        //       "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
        //       "562df38e-7da7-4c49-8fbf-a3813bd93931",
        //       "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
        //       "dc40ac7c-6cad-4e05-b84f-ed1ede414638" 
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "562df38e-7da7-4c49-8fbf-a3813bd93931" 
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
            ]
          }    
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "d0424dc3-364d-44d5-a3db-3b120a25b8fd" 
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "dc40ac7c-6cad-4e05-b84f-ed1ede414638" 
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
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
              "45f99ca0-f156-4fdc-ba87-d8fbb4633f40",
              "4c1a4ba5-59eb-4021-996f-0ef57dcba41f",
              "f7e6ee0c-c889-48f8-bc87-4292588e8c0b",
              "562df38e-7da7-4c49-8fbf-a3813bd93931",
              "d0424dc3-364d-44d5-a3db-3b120a25b8fd",
              "dc40ac7c-6cad-4e05-b84f-ed1ede414638"
            ]
          }
        }
      }
    }
  }

}