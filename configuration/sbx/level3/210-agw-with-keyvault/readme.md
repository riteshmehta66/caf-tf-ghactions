# 1) Wait after app-gw is deployed before you run next again with terraform (takes time in Azure)
# 2) sometimes app-gw fails when using dummy certificate/fqdn - generate manually certificate with open ssl and upload to key-vault for interim use, until customer 
#    uploads actual certificate. 