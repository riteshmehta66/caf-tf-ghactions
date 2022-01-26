#!/bin/bash

export ACTION=${ACTION}
export TF_VAR_environment=${ENVIRONMENT}

if [ -d "/tf/caf/landingzones" ]
then
    echo "/tf/caf/landingzones already exists"
else
    git clone https://github.com/Azure/caf-terraform-landingzones.git /tf/caf/landingzones
fi


if [ $(echo $ACTION | awk '{print $1;}') != "output" ];
then
    /tf/rover/rover.sh \
    -lz /tf/caf/landingzones/caf_launchpad \
    -var-folder /tf/caf/level0/launchpad \
        -launchpad \
        -env $TF_VAR_environment \
        -level level0 \
        -a ${ACTION}
else
    /tf/rover/rover.sh \
    -lz /tf/caf/landingzones/caf_launchpad \
        -launchpad \
        -level level0 \
        -a ${ACTION}
fi