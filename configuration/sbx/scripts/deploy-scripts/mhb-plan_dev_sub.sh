#!/bin/bash


# rover login -tenant microsoft.onmicrosoft.com -s "a066a93c-26fc-4c50-9457-1791f6209b3e"
TF_VAR_tfstate_subscription_id="62d86ea5-6f86-4157-be46-57282363ba93"
caf_environment="pqr-sandpit"

# TF_VAR_tfstate_subscription_id="e011a57c-df98-4a4a-b07d-fbe0b6f482db"      # pqr Dev Subcription


# rover login -tenant riteshmehta66hotmail.onmicrosoft.com -s "85f466ae-558f-471c-b9e8-5be40e40910d"
# TF_VAR_tfstate_subscription_id="85f466ae-558f-471c-b9e8-5be40e40910d"     # (MSDN)
# "ES-CUS-31584-CAFTERRAFORM-DEV-DTCC-PROJECT"


######################################
### Deploy Launchpad
######################################


                              ###### Use -a apply instead of -a plan for sharedservices to generate tfstate file, else all other pland would fail #############


# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_launchpad \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-Sandbox" \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/level0/launchpad \
#   -parallelism 30 \
#   -level level0 \
#   -launchpad \
#   -env ${caf_environment} \
#   -a plan



# ######################################
# ### Deploy Foundation Level-1
# ######################################



### Deploy SharedServices ###

#                               ###### Use -a apply instead of -a plan for sharedservices to generate tfstate file, else all other pland would fail #############


# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-Sandbox" \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/level1/management \
#   -var-file /tf/caf/pqr-iac-platform/configuration/level1/diagnostics_definition.tfvars \
#   -parallelism 30 \
#   -tfstate caf_level1_management.tfstate \
#   -level level1 \
#   -env ${caf_environment} \
#   -a apply


# #           ####### set above sharedservices level-1 to apply  ##########


  # /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  # -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  # -target_subscription "MS-Sandbox" \
  # -var-folder /tf/caf/pqr-iac-platform/configuration/level1/identity \
  # -var-file /tf/caf/pqr-iac-platform/configuration/level1/diagnostics_definition.tfvars \
  # -parallelism 30 \
  # -tfstate caf_level1_identity.tfstate \
  # -level level1 \
  # -env ${caf_environment} \
  # -a plan



  # /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  # -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  # -target_subscription "MS-Sandbox" \
  # -var-folder /tf/caf/pqr-iac-platform/configuration/level1/connectivity \
  # -var-file /tf/caf/pqr-iac-platform/configuration/level1/diagnostics_definition.tfvars \
  # -parallelism 30 \
  # -tfstate caf_level1_connectivity.tfstate \
  # -level level1 \
  # -env ${caf_environment} \
  # -a plan



#   /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-Sandbox" \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/level1/lz1dev \
#   -var-file /tf/caf/pqr-iac-platform/configuration/level1/diagnostics_definition.tfvars \
#   -parallelism 30 \
#   -tfstate caf_level1_lz1dev.tfstate \
#   -level level1 \
#   -env ${caf_environment} \
#   -a plan



# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-Sandbox" \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/level1/lz1prd \
#   -var-file /tf/caf/pqr-iac-platform/configuration/level1/diagnostics_definition.tfvars \
#   -parallelism 30 \
#   -tfstate caf_level1_lz1prd.tfstate \
#   -level level1 \
#   -env ${caf_environment} \
#   -a plan




  ############################################
  ### Deploy  VNETs Level-2
  ############################################




/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution  \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id}  \
  -target_subscription "MS-Sandbox"  \
  -tfstate caf_level2_vnets_connectivity.tfstate  \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/networking/vnet/hub-network   \
  -parallelism 30   \
  -level level2   \
  -env ${caf_environment}   \
  -a plan


/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-Sandbox" \
  -tfstate caf_level2_vnets_identity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/networking/vnet/identity \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a plan




/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-Sandbox" \
  -tfstate caf_level2_vnets_management.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/networking/vnet/management \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a plan



# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-Sandbox" \
#   -tfstate caf_level2_vnets_lz1dev.tfstate \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/level2/networking/vnet/lz1dev \
#   -parallelism 30 \
#   -level level2 \
#   -env ${caf_environment} \
#   -a plan


# /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
#   -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
#   -target_subscription "MS-Sandbox" \
#   -tfstate caf_level2_vnets_lz1prd.tfstate \
#   -var-folder /tf/caf/pqr-iac-platform/configuration/level2/networking/vnet/lz1prd \
#   -parallelism 30 \
#   -level level2 \
#   -env ${caf_environment} \
#   -a plan




#   ###########################################
#   ###         Deploy   VNet Peering    Level-2
#   ###########################################



/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-Sandbox" \
  -tfstate caf_level2_vnets_network_networkpeering.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/networking/peering \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a plan



#   ###########################################
#   ###         Deploy   Test VMs    Level-2
#   ###########################################

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-Sandbox" \
  -tfstate caf_level2_kv_for_vm_identity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/vm/identity/kv_vm_secrets \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a plan

  
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-Sandbox" \
  -tfstate caf_level2_testvm_identity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/vm/identity/test_vm_id \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a plan


    
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-Sandbox" \
  -tfstate caf_level2_testvm_management.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/vm/management/test_vm_mgmt \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a plan


   
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "MS-Sandbox" \
  -tfstate caf_level2_testvm_connectivity.tfstate \
  -var-folder /tf/caf/pqr-iac-platform/configuration/level2/vm/connectivity/test_vm_conn \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a plan

  
