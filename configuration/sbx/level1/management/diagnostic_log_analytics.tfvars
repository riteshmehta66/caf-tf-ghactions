diagnostic_log_analytics = {
  eus2_logs_ss = {
    region             = "region1"
    name               = "mgt-sbx-00-log-00-00-a-log-00-e2"
    resource_group_key = "eus2_la_rg_01"

    # you can setup up to 5 key
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "log_analytics"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }      
    }

    solutions_maps = {
      NetworkMonitoring = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/NetworkMonitoring"
      },
      ADAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADAssessment"
      },
      ADReplication = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADReplication"
      },
      AgentHealthAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/AgentHealthAssessment"
      },
      DnsAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/DnsAnalytics"
      },
      ContainerInsights = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ContainerInsights"
      },
      KeyVaultAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/KeyVaultAnalytics"
      }
    }    
  }

  cus_logs_ss = {
    region             = "region2"
    name               = "mgt-sbx-00-log-00-00-a-log-00-c1"
    resource_group_key = "cus_la_rg_01"

    # you can setup up to 5 key
    diagnostic_profiles = {      
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "log_analytics"
        destination_type = "log_analytics"
        destination_key  = "cus_logs"
      }      
    }

    solutions_maps = {
      NetworkMonitoring = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/NetworkMonitoring"
      },
      ADAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADAssessment"
      },
      ADReplication = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ADReplication"
      },
      AgentHealthAssessment = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/AgentHealthAssessment"
      },
      DnsAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/DnsAnalytics"
      },
      ContainerInsights = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/ContainerInsights"
      },
      KeyVaultAnalytics = {
        "publisher" = "Microsoft"
        "product"   = "OMSGallery/KeyVaultAnalytics"
      }
    }
  }
}