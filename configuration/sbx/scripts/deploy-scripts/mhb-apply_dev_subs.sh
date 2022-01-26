#!/bin/bash

# ##### Troubleshooting:
# ##### if you open this file in Windows, you may endup with your file having Windows line endings, which is confusing Linux. Remove the spurious CR characters. You can do it with the following command:  $ sed -i -e 's/\r$//' setup.sh

# rover login -tenant microsoft.onmicrosoft.com -s "a066a93c-26fc-4c50-9457-1791f6209b3e"
TF_VAR_tfstate_subscription_id="62d86ea5-6f86-4157-be46-57282363ba93"           # MS-SandBox subscription
caf_environment="pqr-sbx-ritesh"

# TF_VAR_tfstate_subscription_id="e011a57c-df98-4a4a-b07d-fbe0b6f482db"      # pqr Dev Subcription


# rover login -tenant riteshmehta66hotmail.onmicrosoft.com -s "85f466ae-558f-471c-b9e8-5be40e40910d"
# TF_VAR_tfstate_subscription_id="85f466ae-558f-471c-b9e8-5be40e40910d"     # (MSDN)
# "ES-CUS-31584-CAFTERRAFORM-DEV-DTCC-PROJECT"


######################################
### Deploy L A U N C H P A D
######################################

  
# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_launchpad \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-SandBox" \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level0/launchpad \
#   -parallelism 30 \
#   -level level0 \
#   -launchpad \
#   -env ${caf_environment} \
#   -a plan



# # ######################################
# # ### Deploy Foundation Level-1
# # ######################################




# ### Deploy Log Analytics, SharedServices ###

#                               ###### Use -a apply instead of -a plan for sharedservices to generate tfstate file, else all other pland would fail ############apply

  
#   /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-SandBox" \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level1/management \
#   -var-file /tf/caf/pqr-iac-platform/configuration/sbx/level1/diagnostics_definition.tfvars \
#   -parallelism 30 \
#   -tfstate caf_level1_management.tfstate \
#   -level level1 \
#   -env ${caf_environment} \
#   -a apply




# #   ############################################
# #   ### Deploy  VNETs Level-2
# #   ############################################




/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution  \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id}  \
  -target_subscription "MS-SandBox"  \
  -tfstate caf_level2_vnets_connectivity.tfstate  \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level2/networking/vnet/hub-network   \
  -parallelism 30   \
  -level level2   \
  -env ${caf_environment}   \
  -a apply


  


/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-SandBox" \
  -tfstate caf_level2_vnets_identity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level2/networking/vnet/identity \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a apply




/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-SandBox" \
  -tfstate caf_level2_vnets_management.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level2/networking/vnet/management \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a apply


  
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-SandBox" \
  -tfstate caf_level2_vnets_byn_lz.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level2/networking/vnet/bynlz \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a apply




#   ###########################################
#   ###         Deploy   VNet Peering    Level-2
#   ###########################################



/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-SandBox" \
  -tfstate caf_level2_vnets_network_networkpeering.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level2/networking/peering \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a apply


  
#   ################################################
#   ###         Deploy   Pvt DNS Zones    Level-2
#   ################################################



# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-SandBox" \
#   -tfstate caf_level2_private_dns_connectivity.tfstate \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level2/networking/pvt_dns \
#   -parallelism 30 \
#   -level level2 \
#   -env ${caf_environment} \
#   -a apply


 
#   ################################################
#   ###         Deploy   FD-Keyvault    Level-3
#   ################################################



/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-SandBox" \
  -tfstate caf_level3_frontdoor_keyvault_connectivity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level3/fd_kv \
  -parallelism 30 \
  -level level3 \
  -env ${caf_environment} \
  -a apply

  
#   ################################################
#   ###         Deploy   FrontDoor    Level-3
#   ################################################



/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-SandBox" \
  -tfstate caf_level3_frontdoor_connectivity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level3/102-front_door_advanced \
  -parallelism 30 \
  -level level3 \
  -env ${caf_environment} \
  -a apply


  
#   ################################################
#   ###         Deploy   App Gateway    Level-3
#   ################################################

  
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-SandBox" \
  -tfstate caf_level3_appgateway_210_connectivity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/sbx/level3/210-agw-with-keyvault  \
  -parallelism 30 \
  -level level3 \
  -env ${caf_environment} \
  -a plan





