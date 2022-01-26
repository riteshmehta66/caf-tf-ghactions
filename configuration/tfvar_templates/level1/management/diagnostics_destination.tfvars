
diagnostics_destinations = {
  # Storage keys must reference the azure region name
  storage = {
    all_regions = {
      eastus2 = {
        storage_account_key = "diaglogs_region1_ss"
      }
      centralus = {
        storage_account_key = "diaglogs_region2_ss"
      }
    }
  }

  log_analytics = {
    eus2_logs = {
      log_analytics_key              = "eus2_logs_ss"
      log_analytics_destination_type = "Dedicated"
    }
    
    cus_logs = {
      log_analytics_key              = "cus_logs_ss"
      log_analytics_destination_type = "Dedicated"
    }
  }

  // event_hub_namespaces = {
  //   eus2_evh = {
  //     event_hub_namespace_key = "eus2_evh_ss"
  //   }
  //   cus_evh = {
  //     event_hub_namespace_key = "cus_evh_ss"
  //   }
    
  // }
}