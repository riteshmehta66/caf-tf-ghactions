application_gateways = {
  eus2_appgw_01 = {
    resource_group_key = "eus2_appgw_rg_01"
    name               = "con-{{configs.environment}}-hub-ntw-00-00-a-appgw-00-e2"
    lz_key             = "caf_level2_vnets_connectivity"
    vnet_key           = "eus2_vnet_01"
    subnet_key         = "eus2_vnet_01_snet_01"
    sku_name           = "WAF_v2"
    sku_tier           = "WAF_v2"
    capacity = {
      autoscale = {
        minimum_scale_unit = 0
        maximum_scale_unit = 10
      }
    }
    zones        = ["1"]
    enable_http2 = true

    identity = {
      managed_identity_keys = [
        "apgw_keyvault_secrets"
      ]
    }

    front_end_ip_configurations = {
      public = {
        name          = "public"
        public_ip_key = "eus2_pip_01"
        // subnet_key    = "app_gateway_public"
      }
      private = {
        name                          = "private"
        lz_key                        = "caf_level2_vnets_connectivity"
        vnet_key                      = "eus2_vnet_01"
        subnet_key                    = "eus2_vnet_01_snet_01"
        subnet_cidr_index             = 0 # It is possible to have more than one cidr block per subnet
        private_ip_offset             = 4 # e.g. cidrhost(10.10.0.0/25,4) = 10.10.0.4 => AGW private IP address
        private_ip_address_allocation = "Static"
      }
    }

    front_end_ports = {
      80 = {
        name     = "http-80"
        port     = 80
        protocol = "Http"
      }
      443 = {
        name     = "https-443"
        port     = 443
        protocol = "Https"
      }
      4431 = {
        name     = "https-4431"
        port     = 4431
        protocol = "Https"
      }
    }
  }

  cus_appgw_01 = {
    resource_group_key = "cus_appgw_rg_01"
    name               = "con-{{configs.environment}}-hub-ntw-00-00-a-appgw-00-c1"
    lz_key             = "caf_level2_vnets_connectivity"
    vnet_key           = "cus_vnet_01"
    subnet_key         = "cus_vnet_01_snet_01"
    sku_name           = "WAF_v2"
    sku_tier           = "WAF_v2"
    capacity = {
      autoscale = {
        minimum_scale_unit = 0
        maximum_scale_unit = 10
      }
    }
    zones        = ["1"]
    enable_http2 = true

    identity = {
      managed_identity_keys = [
        "apgw_keyvault_secrets"
      ]
    }

    front_end_ip_configurations = {
      public = {
        name          = "public"
        public_ip_key = "cus_pip_01"
        // subnet_key    = "app_gateway_public"
      }
      private = {
        name                          = "private"
        lz_key                        = "caf_level2_vnets_connectivity"
        vnet_key                      = "cus_vnet_01"
        subnet_key                    = "cus_vnet_01_snet_01"
        subnet_cidr_index             = 0 # It is possible to have more than one cidr block per subnet
        private_ip_offset             = 4 # e.g. cidrhost(10.10.0.0/25,4) = 10.10.0.4 => AGW private IP address
        private_ip_address_allocation = "Static"
      }
    }

    front_end_ports = {
      80 = {
        name     = "http-80"
        port     = 80
        protocol = "Http"
      }
      443 = {
        name     = "https-443"
        port     = 443
        protocol = "Https"
      }
      4431 = {
        name     = "https-4431"
        port     = 4431
        protocol = "Https"
      }
    }
  }
}