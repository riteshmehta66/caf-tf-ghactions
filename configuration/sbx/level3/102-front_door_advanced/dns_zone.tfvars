dns_zones = {
  dns_zone1 = {
    //# name when left empty generate a random domain name. Mainly used in CI
    // name               = "www.randommhb.com"
    name               = "mobileheartbeats.com"  
    region             = "region1"
    resource_group_key = "front_door"

    contract = {
      name_first   = "John"
      name_last    = "Doe"
      email        = "test@contoso.com"
      phone        = "+65.12345678"
      organization = "Sandpit"
      job_title    = "Engineer"
      address1     = "Singapore"
      address2     = ""
      postal_code  = "018898"
      state        = "Singapore"
      city         = "Singapore"
      country      = "SG"
      auto_renew   = true
    }
    records = {
      // a = {
      //   www1 = {
      //     name = "www1"
      //     resource_id = {
      //       public_ip_address = {
      //         key = "example_pip1_re1"
      //       }
      //     }
      //   }
      // }
      cname = {
        mhbtest1 = {
          name   = "mhbtest1"
          record = "con-sbx-hub-ntw-00-00-a-fd-00-e2.azurefd.net"
        }
        // ftp_co_uk = {
        //   name   = "ftp"
        //   record = "www.bing.co.uk"
        //   tags = {
        //     project = "prod_crm"
        //   }
        // }
      } //cname
    }
  }
}