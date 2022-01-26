
#
# Define the settings for the diagnostics settings
# Demonstrate how to log diagnostics in the correct region
# Different profiles to target different operational teams
#
diagnostics_definition = {
  log_analytics = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Audit", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }

  }

  event_hub_namespace = {
    name = "evh_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ArchiveLogs", true, true, 30],
        ["OperationalLogs", true, true, 30],
        ["AutoScaleLogs", true, true, 30],
        ["KafkaCoordinatorLogs", true, true, 30],
        ["KafkaUserErrorLogs", true, true, 30],
        ["EventHubVNetConnectionEvent", true, true, 30],
        ["CustomerManagedKeyUserLogs", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }
  }

  storage_account = {
    name = "operational_logs_and_metrics"
    categories = {
      // log = [
      //   # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
      //   ["AuditEvent", true, true, 30],
      // ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["Transaction", true, true, 30],
      ]
    }
  }

  default_all = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }

  }


  default_only_metric = {
    name = "operational_logs_and_metrics"
    categories = {
      // log = [
      //   # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
      //   ["AuditEvent", true, true, 30],
      // ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }

  }


  bastion_host = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["BastionAuditLogs", true, true, 30],
      ]
    }

  }

  vnet = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["VMProtectionAlerts", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }
  }

  networking_all = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["VMProtectionAlerts", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }

  }

  public_ip_address = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["DDoSProtectionNotifications", true, true, 30],
        ["DDoSMitigationFlowLogs", true, true, 30],
        ["DDoSMitigationReports", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }

  }

  network_security_group = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["NetworkSecurityGroupEvent", true, true, 30],
        ["NetworkSecurityGroupRuleCounter", true, true, 30],
      ]
    }

  }

  nic = {
    name = "operational_logs_and_metrics"
    categories = {
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }
  }

  azure_container_registry = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ContainerRegistryRepositoryEvents", true, true, 30],
        ["ContainerRegistryLoginEvents", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }
  }

  compliance_all = {
    name = "compliance_logs"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, true, 365],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }

  }

  siem_all = {
    name = "siem"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AuditEvent", true, true, 0],
      ]

      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 0],
      ]
    }

  }

  subscription_operations = {
    name = "subscription_operations"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)"]
        ["Administrative", true],
        ["Security", true],
        ["ServiceHealth", true],
        ["Alert", true],
        ["Policy", true],
        ["Autoscale", true],
        ["ResourceHealth", true],
        ["Recommendation", true],
      ]
    }
  }

  subscription_siem = {
    name = "activity_logs_for_siem"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)"]
        ["Administrative", false],
        ["Security", true],
        ["ServiceHealth", false],
        ["Alert", false],
        ["Policy", true],
        ["Autoscale", false],
        ["ResourceHealth", false],
        ["Recommendation", false],
      ]
    }

  }

  event_hub_namespace = {
    name = "evh_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["ArchiveLogs", true, true, 30],
        ["OperationalLogs", true, true, 30],
        ["AutoScaleLogs", true, true, 30],
        ["KafkaCoordinatorLogs", true, true, 30],
        ["KafkaUserErrorLogs", true, true, 30],
        ["EventHubVNetConnectionEvent", true, true, 30],
        ["CustomerManagedKeyUserLogs", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }
  }

  azure_vnet_firewall = {
    name = "operational_logs_and_metrics"
    categories = {
      log = [
        # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AzureFirewallApplicationRule", true, true, 30],
        ["AzureFirewallNetworkRule", true, true, 30],
        ["AzureFirewallDnsProxy", true, true, 30],
      ]
      metric = [
        #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
        ["AllMetrics", true, true, 30],
      ]
    }
  }

 # express_route_circuit for VWAN
//   express_route_circuit_vwan = {
//     name = "operational_logs_and_metrics"
//     categories = {
//       log = [
//         # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
//         ["PeeringRouteLog", true, true, 30],
//       ]
//       metric = [
//         #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
//         ["Circuit Traffic", true, true, 30],
//         ["Circuit Availability", true, true, 30],
//         ["Circuit Qos", true, true, 30],
//         ["GlobalReach Traffic", true, true, 30],
//       ]
//     }
//   }

// # express_route_circuit for Traditional Hub and Spoke
//   express_route_circuit_hubandSpoke = {
//     name = "operational_logs_and_metrics"
//     categories = {
//       log = [
//         # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
//         ["PeeringRouteLog", true, true, 30],
//       ]
//       metric = [
//         #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
//         ["AllMetrics", true, true, 30],
        
//       ]
//     }
//   }

//   expressroutegateway_vwan = {
//     name = "operational_logs_and_metrics"
//     categories = {
//       metric = [
//         #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
//         ["AllMetrics", true, true, 30],
//         ["BitsInPerSecond", true, true, 30],
//         ["BitsOutPerSecond", true, true, 30],

//       ]
//     }
//   }

}