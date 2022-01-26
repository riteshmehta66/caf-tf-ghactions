
resource_groups = {
  eus2_appgw_rg_01 = {
    name   = "con-{{configs.environment}}-agw-ntw-00-00-a-rg-agw-01-e2"
    region = "region1"
    tags   = {
      "application name"  = "app gateway"
      "{{configs.environment}} hours" =  "7am-7pm EST WD's"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

  cus_appgw_rg_01 = {
    name   = "con-{{configs.environment}}-agw-ntw-00-00-a-rg-agw-01-c1"
    region = "region2"
    tags   = {
      "application name"  = "app gateway"
      "{{configs.environment}} hours" =  "7am-7pm EST WD's"
      "business unit"  =  "sre"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "tech services"
      "owner name" = "thomas.stokkeland@mobileheartbeat.com "
      "customer name"  =  "pqr"
      "customer contact"  =  "chris.sego@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }
}