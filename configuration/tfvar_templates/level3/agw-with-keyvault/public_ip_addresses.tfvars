public_ip_addresses = {
  eus2_pip_01 = {
    name                    = "con-{{configs.environment}}-appgw-pip-01-e2"
    resource_group_key      = "eus2_appgw_rg_01"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    zones                   = ["1"]
    idle_timeout_in_minutes = "4"
  }

  cus_pip_01 = {
    name                    = "con-{{configs.environment}}-appgw-pip-01-c1"
    resource_group_key      = "cus_appgw_rg_01"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    zones                   = ["1"]
    idle_timeout_in_minutes = "4"
  }
}