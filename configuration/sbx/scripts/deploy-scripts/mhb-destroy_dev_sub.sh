#!/bin/bash


TF_VAR_tfstate_subscription_id="a399f345-70ba-46db-8b38-a8ea671c6062"
caf_environment="mhb-dev"



    
#   ################################################################
#   ##         Destroy   Storage Account - general purpose    Level-2
#   ################################################################

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "byn-dev-eng-app-00-00-a-sub-00-e2" \
  -tfstate caf_level2_storage_general_management.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/storage_account \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve



  
  ################################################################
  ##         Destroy   KV - general purpose    Level-2
  ################################################################

/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "byn-dev-eng-app-00-00-a-sub-00-e2" \
  -tfstate caf_level2_kv_for_vm_management.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/kv \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve 



# #   ###########################################
# #   ###         Destroy   Test VMs    Level-2
# #   ###########################################

    
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "mgt-dev-00-ss-00-mhb-a-sub-00-e2" \
  -tfstate caf_level2_testvm_management.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/vm/management/test_vm_mgmt \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve



  
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "idm-dev-00-idm-00-mhb-a-sub-00-e2" \
  -tfstate caf_level2_testvm_identity.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/vm/identity/test_vm_id \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve



   
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "con-dev-hub-ntw-00-00-a-sub-00-e2" \
  -tfstate caf_level2_testvm_connectivity.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/vm/connectivity/test_vm_conn \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve
  



#################################################
####  Destroy KV for VM Secrets
#################################################


  /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "idm-dev-00-idm-00-mhb-a-sub-00-e2" \
  -tfstate caf_level2_kv_for_vm_identity.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/vm/identity/kv_vm_secrets \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve





  
# #   ################################################
# #   ###         Destroy   Pvt DNS Zones    Level-2
# #   ################################################



/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "con-dev-hub-ntw-00-00-a-sub-00-e2" \
  -tfstate caf_level2_private_dns_connectivity.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/networking/pvt_dns \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve




#   ##############################################
#   ###         Destroy   VNet Peering    Level-2
#   ##############################################



/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "con-dev-hub-ntw-00-00-a-sub-00-e2" \
  -tfstate caf_level2_vnets_network_networkpeering.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/networking/peering \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve




  
  ############################################
  ### Destroy  VNETs Level-2
  ############################################


  
/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "byn-dev-eng-app-00-00-a-sub-00-e2" \
  -tfstate caf_level2_vnets_byn_lz.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/networking/vnet/bynlz \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve


/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "mgt-dev-00-ss-00-mhb-a-sub-00-e2" \
  -tfstate caf_level2_vnets_management.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/networking/vnet/management \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve





/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "idm-dev-00-idm-00-mhb-a-sub-00-e2" \
  -tfstate caf_level2_vnets_identity.tfstate \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/networking/vnet/identity \
  -parallelism 30 \
  -level level2 \
  -env ${caf_environment} \
  -a destroy -auto-approve




  /tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution  \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id}  \
  -target_subscription "con-dev-hub-ntw-00-00-a-sub-00-e2"  \
  -tfstate caf_level2_vnets_connectivity.tfstate  \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level2/networking/vnet/hub-network   \
  -parallelism 30   \
  -level level2   \
  -env ${caf_environment}   \
  -a destroy -auto-approve

  


#####################################
### Destroy Level-1 Foundations ###
#####################################


/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "con-dev-hub-ntw-00-00-a-sub-00-e2" \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level1/connectivity \
  -var-file /tf/caf/mhb-iac-platform/configuration/dev/level1/diagnostics_definition.tfvars \
  -parallelism 30 \
  -tfstate caf_level1_connectivity.tfstate \
  -level level1 \
  -env ${caf_environment} \
  -a destroy -auto-approve




/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "idm-dev-00-idm-00-mhb-a-sub-00-e2" \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level1/identity \
  -var-file /tf/caf/mhb-iac-platform/configuration/dev/level1/diagnostics_definition.tfvars \
  -parallelism 30 \
  -tfstate caf_level1_identity.tfstate \
  -level level1 \
  -env ${caf_environment} \
  -a destroy -auto-approve





/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_solution \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "mgt-dev-00-ss-00-mhb-a-sub-00-e2" \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level1/management \
  -var-file /tf/caf/mhb-iac-platform/configuration/dev/level1/diagnostics_definition.tfvars \
  -parallelism 30 \
  -tfstate caf_level1_management.tfstate \
  -level level1 \
  -env ${caf_environment} \
  -a destroy -auto-approve

  
# ######################################
# ### Destroy Launchpad - Level-0
# ######################################




/tf/rover/rover.sh -lz /tf/caf/landingzones/caf_launchpad \
  -tfstate_subscription_id ${TF_VAR_tfstate_subscription_id} \
  -target_subscription "caf-dev-eng-caf-00-mhb-a-sub-devops-e2" \
  -var-folder /tf/caf/mhb-iac-platform/configuration/dev/level0/launchpad \
  -parallelism 30 \
  -level level0 \
  -launchpad \
  -env ${caf_environment} \
  -a destroy -auto-approve







