
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "0eb00271-50f7-4a43-a915-a83d8f837603" 
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "0fcee476-25b4-438a-9e7e-6b9f24effa76" 
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
            ]
          }    
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "e7e49908-139c-4123-9126-9791396c0502" 
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
            ]
          }
        }
        // "Storage Blob Data Reader" = {
        //   // logged_in = {
        //   //   keys = ["user"]
        //   // }
        //   object_ids = {
        //     keys = [
        //       "dd2cb2c1-f31b-4f27-a896-4529a6983485" 
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
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
              "70a6b34e-8fe2-4909-8e02-1cdfab529912",
              "0eb00271-50f7-4a43-a915-a83d8f837603",
              "35e227ea-f27e-40aa-8f03-87f3ecf202e3",
              "0fcee476-25b4-438a-9e7e-6b9f24effa76",
              "e7e49908-139c-4123-9126-9791396c0502",
              "dd2cb2c1-f31b-4f27-a896-4529a6983485"
            ]
          }
        }
      }
    }
  }

}