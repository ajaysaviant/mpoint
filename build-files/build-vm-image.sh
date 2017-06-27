#!/bin/bash

echo "************* set environment vars"
export ARM_CLIENT_ID=$1
export ARM_CLIENT_SECRET=$2
export ARM_RESOURCE_GROUP=$3
export ARM_STORAGE_ACCOUNT=$4
export ARM_SUBSCRIPTION_ID=$5
export ARM_TENANT_ID=$6
export ADMIN_USERNAME=$7
export ADMIN_PASSWORD=$8

echo "************* set environment vars"
export ARM_CLIENT_ID=a6e0fa5f-707a-4615-89e0-01a25d8f227b
export ARM_CLIENT_SECRET=CLUvVsojOWL1udp7POx2bsUzFiNLvAp7Zc0mBOdvCUc=
export ARM_RESOURCE_GROUP=mpoint_scaleset_production
export ARM_STORAGE_ACCOUNT=mpointvhdstorage
export ARM_SUBSCRIPTION_ID=2951e8ec-d8fe-4ccf-9b2d-60c850790d4b
export ARM_TENANT_ID=9b1573f5-e2ee-4d25-97dd-51b6f4c45b99
export ADMIN_USERNAME=mpointadmin
export ADMIN_PASSWORD=Gogreen@456


rm packer-build-output.log

echo "************* execute packer build"
## execute packer build and sendout to packer-build-output file
packer build ./packer-files/java-packer.json 2>&1 | tee packer-build-output.log

 cat azuredeploy.parameters.json

