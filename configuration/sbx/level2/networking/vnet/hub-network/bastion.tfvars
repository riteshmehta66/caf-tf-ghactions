

bastion_hosts = {
  eus2_hub_vnet_bastion_01 = {
    name               = "con-sbx-hub-ntw-00-00-a-bas-00-e2"
    region             = "region1"
    resource_group_key = "eus2_vnet_rg_01"
    vnet_key           = "eus2_vnet_01"
    subnet_key         = "AzureBastionSubnet"
    public_ip_key      = "eus2_bastion_host_pip_01"

    // # you can setup up to 5 profiles
    // diagnostic_profiles = {
    //   central_logs_region1 = {
    //     definition_key   = "bastion_host"
    //     destination_type = "log_analytics"
    //     destination_key  = "central_logs"
    //   }
    // }
  }

  cus_hub_vnet_bastion_01 = {
    name               = "con-sbx-hub-ntw-00-00-a-bas-00-c1"
    region             = "region2"
    resource_group_key = "cus_vnet_rg_01"
    vnet_key           = "cus_vnet_01"
    subnet_key         = "AzureBastionSubnet"
    public_ip_key      = "cus_bastion_host_pip_01"

    // # you can setup up to 5 profiles
    // diagnostic_profiles = {
    //   central_logs_region1 = {
    //     definition_key   = "bastion_host"
    //     destination_type = "log_analytics"
    //     destination_key  = "central_logs"
    //   }
    // }
  }

}