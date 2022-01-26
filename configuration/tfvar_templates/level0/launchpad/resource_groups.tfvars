resource_groups = {

  level0 = {
    name = "caf-{{configs.environment}}-00-ss-cf0-00-pqr-a-rg-00dvops-e2"
    tags = {
      level = "level0"      # Do not change this tag. Used by CAF-Terraform

      "application name"  = "caf"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "engineering"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "engineering support"
      "owner name" =  "mike.kellstrand@mobileheartbeat.com"
      "customer name"  =  "pqr"
      "customer contact"  =  "brian.mckee@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }
  level1 = {
    name = "caf-{{configs.environment}}-00-ss-cf1-00-pqr-a-rg-00dvops-e2"
    tags = {
      level = "level1"                        # Do not change this tag. Used by CAF-Terraform

      "application name"  = "caf"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "engineering"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "engineering support"
      "owner name" =  "mike.kellstrand@mobileheartbeat.com"
      "customer name"  =  "pqr"
      "customer contact"  =  "brian.mckee@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }
  level2 = {
    name = "caf-{{configs.environment}}-00-ss-cf2-00-pqr-a-rg-00dvops-e2"
    tags = {
      level = "level2"                            # Do not change this tag. Used by CAF-Terraform

      "application name"  = "caf"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "engineering"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "engineering support"
      "owner name" =  "mike.kellstrand@mobileheartbeat.com"
      "customer name"  =  "pqr"
      "customer contact"  =  "brian.mckee@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }
  level3 = {
    name = "caf-{{configs.environment}}-00-ss-cf3-00-pqr-a-rg-00dvops-e2"
    tags = {
      level = "level3"                              # Do not change this tag. Used by CAF-Terraform

      "application name"  = "caf"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "engineering"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "engineering support"
      "owner name" =  "mike.kellstrand@mobileheartbeat.com"
      "customer name"  =  "pqr"
      "customer contact"  =  "brian.mckee@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }
  level4 = {
    name = "caf-{{configs.environment}}-00-ss-cf4-00-pqr-a-rg-00dvops-e2"
    tags = {
      level = "level4"                            # Do not change this tag. Used by CAF-Terraform

      "application name"  = "caf"
      "{{configs.environment}} hours" =  "{{configs.tag_hours1}}"
      "business unit"  =  "engineering"
      "cost center"  =  "26839-200100"
      "environment type" =  "{{configs.environment}}"
      "operations team" =  "engineering support"
      "owner name" =  "mike.kellstrand@mobileheartbeat.com"
      "customer name"  =  "pqr"
      "customer contact"  =  "brian.mckee@mobileheartbeat.com"
      "data classification"  =  "confidential"
    }
  }

}