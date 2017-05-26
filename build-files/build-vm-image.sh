#!/bin/bash

##echo "************* set environment vars"
##export ARM_CLIENT_ID=$1
##export ARM_CLIENT_SECRET=$2
##export ARM_RESOURCE_GROUP=$3
##export ARM_STORAGE_ACCOUNT=$4
##export ARM_SUBSCRIPTION_ID=$5
##export ARM_TENANT_ID=$6
##export ADMIN_USERNAME=$7
##export ADMIN_PASSWORD=$8

echo "************* set environment vars"
export ARM_CLIENT_ID=04287572-5a24-4e77-89b6-27de62925515
export ARM_CLIENT_SECRET=XDYF5P6v4wTwL7YCcjS2XFtrkFSfJoJ5Th2kqUUU4Uw=
export ARM_RESOURCE_GROUP=mpointpoc
export ARM_STORAGE_ACCOUNT=mpoint
export ARM_SUBSCRIPTION_ID=28d69262-04f8-4974-8f5f-953cc6f18549
export ARM_TENANT_ID=72e1d49a-c9eb-4554-96b9-e764bddd3340
export ADMIN_USERNAME=adminuser
export ADMIN_PASSWORD=Saviant@1234


rm packer-build-output.log

echo "************* execute packer build"
## execute packer build and sendout to packer-build-output file
packer build ./packer-files/java-packer.json 2>&1 | tee packer-build-output.log

 cat azuredeploy.parameters.json

