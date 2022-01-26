front_doors = {
  front_door1 = {
    name                   = "con-sbx-hub-ntw-00-00-a-fd-00-e2"
    resource_group_key     = "front_door"
    certificate_name_check = false
    # Keyvault key hosting the ssl certificates
    # keyvault_lz_key = "caf_level3_frontdoor_keyvault_connectivity"
    lz_key = "caf_level3_frontdoor_keyvault_connectivity"
    keyvault_key = "cert_secrets"

    # Brian
    routing_rule = {
      rr1 = {
        name                   = "exampleRoutingRule1"
        frontend_endpoint_keys = ["fe1"]
        accepted_protocols     = ["Http", "Https"]
        patterns_to_match      = ["/*"]
        enabled                = true
        configuration          = "Forwarding"
        forwarding_configuration = {
          backend_pool_name                     = "bing"
          cache_enabled                         = false
          cache_use_dynamic_compression         = false
          cache_query_parameter_strip_directive = "StripAll"
          custom_forwarding_path                = ""
          forwarding_protocol                   = "MatchRequest"
        }
        redirect_configuration = {
          custom_host         = ""
          redirect_protocol   = "MatchRequest"
          redirect_type       = "Found"
          custom_fragment     = ""
          custom_path         = ""
          custom_query_string = ""
        }
      }
    }

    # Following optional argument can be used to set a time out value between 0-240. If not passed, by default it will be set to 60
    # backend_pools_send_receive_timeout_seconds = 120

    # Following optional argument can be used to disable Front Door Load Balancer
    # load_balancer_enabled  =  false

    # Following optional argument can be used to pass a friendly name for the Front Door service
    # friendly_name          =  "ExampleFriendDoor"

    # We are using AppGw instead of LB's. Check what is needed for AppGw.
    backend_pool_load_balancing = {
      lb1 = {
        name                            = "exampleLoadBalancingSettings1"
        sample_size                     = 4
        successful_samples_required     = 2
        additional_latency_milliseconds = 0
      }
    }

    backend_pool_health_probe = {
      hp1 = {
        name                = "exampleHealthProbeSetting1"
        path                = "/"
        protocol            = "Https"
        interval_in_seconds = 120
      }
    }

    backend_pool = {
      bp1 = {
        name               = "bing"
        load_balancing_key = "lb1"
        health_probe_key   = "hp1"
        backend = {
          be1 = {
            enabled     = true
            address     = "www.bing.com"
            host_header = "www.bing.com"
            http_port   = 80
            https_port  = 443
            priority    = 1
            weight      = 50
          },
          be2 = {
            enabled     = true
            address     = "www.bing.co.uk"
            host_header = "www.bing.co.uk"
            http_port   = 80
            https_port  = 443
            priority    = 1
            weight      = 50
          }
        }

      }
    }

    #Brian 
    frontend_endpoints = {
      fe1 = {
        name = "exampleFrontendEndpoint1"
        // # host_name                         = "randomabcxyz-FrontDoor.azurefd.net" ?? not used in the code
        host_name                         = "con-sbx-hub-ntw-00-00-a-fd-00-e2.azurefd.net"
        session_affinity_enabled          = false
        session_affinity_ttl_seconds      = 0
        custom_https_provisioning_enabled = false
        #Required if custom_https_provisioning_enabled is true
        // custom_https_configuration = {
        //   certificate_source = "AzureKeyVault"
        //   #If certificate source is AzureKeyVault the below are required:
        //   # azure_key_vault_certificate_vault_id       = "/subscriptions/[subscription_id]/resourceGroups/[resource_group_name]/providers/Microsoft.KeyVault/vaults/kv-certsecrets-ccmcj"
        //   # azure_key_vault_certificate_secret_name    = "test"
        //   # azure_key_vault_certificate_secret_version = "b672b38ce10245b8bd3ba75924c80d3d"
        //   #
        //   #### Or if created from CAF module
        //   #
        //   // certificate = {
        //   //   key = "sales_application"
        //   //   # lz_key = ""
        //   // }
        // }
        # custom_https_configuration = {
        #   certificate_source = "AzureKeyVault"
        #   #If certificate source is AzureKeyVault the below are required:
        #   azure_key_vault_certificate_vault_id       = "/subscriptions/62d86ea5-6f86-4157-be46-57282363ba93/resourceGroups/con-sbx-fd-ntw-00-00-a-rg-fdkv-00-e2/providers/Microsoft.KeyVault/vaults/consbxfdpqrakvfd002tste2"
        #   azure_key_vault_certificate_secret_name    = "cert-password"
        #   azure_key_vault_certificate_secret_version = "ced56a6f62dd4c72a87d67bde9a02e34"
        #   #
        #   #### Or if created from CAF module
        #   #
        #   // certificate = {
        #   //   key = "sales_application"
        #   //   # lz_key = ""
        #   // }
        # }
        front_door_waf_policy = {
          key = "wp1"
          # lz_key                    = ""
        }
      }
    }

    # you can setup up to 5 profiles
    diagnostic_profiles = {    
      diagnostics_log_analytic = {
        name             = "diagnostics-loganalytics"
        definition_key   = "azure_front_door"
        destination_type = "log_analytics"
        destination_key  = "eus2_logs"
      }
    }
  }
}
