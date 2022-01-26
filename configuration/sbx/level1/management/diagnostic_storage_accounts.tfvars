diagnostic_storage_accounts = {
  # Stores diagnostic logging for region1
  diaglogs_region1_ss = {
    name                     = "mgtsbx00ss0008astlogde2"
    region                   = "region1"
    resource_group_key       = "eus2_std_rg_01"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"

    // enable_system_msi    = true
    // customer_managed_key = {
    //   keyvault_key     = "eus2_storage_cmk_01"
    //   keyvault_key_key = "eus2_diagnostic_storage_account_cmk"
    // }    
  }
  
  diaglogs_region2_ss = {
    name                     = "mgtsbx00ss0008astlogdc1"
    region                   = "region2"
    resource_group_key       = "cus_std_rg_01"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"

    

    // enable_system_msi    = true
    // customer_managed_key = {
    //   keyvault_key     = "cus_storage_cmk_01"
    //   keyvault_key_key = "cus_diagnostic_storage_account_cmk"
    // }    
  }
}