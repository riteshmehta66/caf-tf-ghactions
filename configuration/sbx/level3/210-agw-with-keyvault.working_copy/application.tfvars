application_gateway_applications = {
  eus2_appgw_01_app_01 = {

    name                    = "con-sbx-hub-appgw-00-00-a-app-01-e2"
    application_gateway_key = "eus2_appgw_01"

    listeners = {
      private = {
        name                           = "demoapp1-80-private"
        front_end_ip_configuration_key = "private"
        front_end_port_key             = "80"
        host_name                      = "demoapp1.cafdemo.com"
        request_routing_rule_key       = "default"
      }
      private_ssl = {
        name                           = "appgw_private.jatinmehta.ca"
        front_end_ip_configuration_key = "private"
        front_end_port_key             = "443"
        host_name                      = "appgw_private.jatinmehta.ca"                   //pqrtest1.mobileheartbeats.com
        request_routing_rule_key       = "default"
        keyvault_certificate = {
          // certificate_key = "demoapp1.cafdemo.com"
          // To use manual uploaded cert
          // keyvault_lz_key  =      ""                  // please note that it is not just lz_key but keyvault_lz_key
          certificate_name = "appgw-private-jatinmehta-ca"
          keyvault_key     = "certificates"
          // # keyvault_id     = "/subscriptions/421faaf7-d2a0-4876-8f37-c2578e0a3a30/resourceGroups/con-sbx-fd-ntw-00-00-a-rg-fdkv-00-e2/providers/Microsoft.KeyVault/vaults/consbxfdpqrakvfd002tste2"
        }
      }
      public_ssl = {
        name                           = "appgw_public.jatinmehta.ca"
        front_end_ip_configuration_key = "public"
        front_end_port_key             = "4431"
        host_name                      = "appgw_public.jatinmehta.ca"
        request_routing_rule_key       = "default"
        keyvault_certificate = {
          // certificate_key = "demoapp1.cafdemo.com"
          // To use manual uploaded cert
          keyvault_key     = "certificates"
          certificate_name = "appgw-public-jatinmehta-ca"
          // # keyvault_id     = "/subscriptions/421faaf7-d2a0-4876-8f37-c2578e0a3a30/resourceGroups/con-sbx-fd-ntw-00-00-a-rg-fdkv-00-e2/providers/Microsoft.KeyVault/vaults/consbxfdpqrakvfd002tste2"
        }
      }
    }


    request_routing_rules = {
      default = {
        rule_type = "Basic"
      }
    }

    backend_http_setting = {
      port                                = 443
      protocol                            = "Https"
      pick_host_name_from_backend_address = true
    }

    backend_pool = {
      fqdns = [
        "cafdemo.appserviceenvironment.net"               //fqdn for aks cluster
      ]
    }

  }

  // cus_appgw_01_app_01 = {

  //   name                    = "con-sbx-hub-appgw-00-00-a-app-01-c1"
  //   application_gateway_key = "cus_appgw_01"

  //   listeners = {
  //     private = {
  //       name                           = "demoapp1-80-private"
  //       front_end_ip_configuration_key = "private"
  //       front_end_port_key             = "80"
  //       host_name                      = "demoapp1.cafdemo.com"
  //       request_routing_rule_key       = "default"
  //     }
  //     private_ssl = {
  //       name                           = "demoapp1-443-private"
  //       front_end_ip_configuration_key = "private"
  //       front_end_port_key             = "443"
  //       host_name                      = "demoapp1.cafdemo.com"
  //       request_routing_rule_key       = "default"
  //       keyvault_certificate = {
  //         certificate_key = "demoapp1.cafdemo.com"
  //         // To use manual uploaded cert
  //         # certificate_name = "testkhairi"
  //         # keyvault_key     = "certificates"
  //         #  keyvault_id     = "/subscriptions/97958dac-xxxx-xxxx-xxxx-9f436fa73bd4/resourceGroups/jmtv-rg-example-app-gateway-re1/providers/Microsoft.KeyVault/vaults/jmtv-kv-certs"
  //       }
  //     }
  //     public_ssl = {
  //       name                           = "demoapp1-4431-public"
  //       front_end_ip_configuration_key = "public"
  //       front_end_port_key             = "4431"
  //       host_name                      = "demoapp1.cafdemo.com"
  //       request_routing_rule_key       = "default"
  //       keyvault_certificate = {
  //         certificate_key = "demoapp1.cafdemo.com"
  //         // To use manual uploaded cert
  //         # certificate_name = "testkhairi"
  //         # keyvault_id     = "/subscriptions/97958dac-xxxx-xxxx-xxxx-9f436fa73bd4/resourceGroups/jmtv-rg-example-app-gateway-re1/providers/Microsoft.KeyVault/vaults/jmtv-kv-certs"
  //       }
  //     }
  //   }


  //   request_routing_rules = {
  //     default = {
  //       rule_type = "Basic"
  //     }
  //   }

  //   backend_http_setting = {
  //     port                                = 443
  //     protocol                            = "Https"
  //     pick_host_name_from_backend_address = true
  //   }

  //   backend_pool = {
  //     fqdns = [
  //       "cafdemo.appserviceenvironment.net"
  //     ]
  //   }

  // }
}