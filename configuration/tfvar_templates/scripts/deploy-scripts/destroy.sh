#!/bin/bash

export LEVEL_NAME=$1
export ACTION=${ACTION:="plan"}
export TF_VAR_environment=$ENVIRONMENT
export TF_VAR_LAUNCHPAD_SUB=$LAUNCHPAD_SUB

if [ -d "/tf/caf/landingzones" ]
then
  echo "/tf/caf/landingzones already exists"
else
  git clone https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
fi


export projects=$(jq '.projects | keys_unsorted | .[]' /tf/caf/$1/configs_$1.json)
export r_projects=$(printf '%s\n' "${projects[@]}" | tac)
for k in $r_projects; do
    project=$(jq -r ".projects[$k]" /tf/caf/$1/configs_$1.json);
    p_name="${k%\"}"
    p_name="${p_name#\"}"
    p_path=$(jq -r '.path' <<< "$project");
    sub_id=$(jq -r '.subscription_id' <<< "$project");
    tfstate=$(jq -r '.tfstate' <<< "$project");
    /tf/rover/rover.sh  \
    -lz /tf/caf/landingzones/caf_solution \
    -tfstate_subscription_id $TF_VAR_LAUNCHPAD_SUB \
    -target_subscription $sub_id \
    -var-folder /tf/caf/${LEVEL_NAME}/$p_path/ \
    -tfstate $tfstate \
    --environment ${TF_VAR_environment} \
    -level ${LEVEL_NAME} \
    -a ${ACTION}
    exit_code=$?
    if [ $exit_code -ne 0 ]; then
        >&2 echo "Project $p_name failed with exit code ${exit_code}."
        exit $exit_code
    fi
    echo "Finished Running $p_name project"
done