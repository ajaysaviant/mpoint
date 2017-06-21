#!/bin/bash

cat azuredeploy.parameters.json
Remove-AzureRmVmss -ResourceGroupName mPoint_Scaleset_29052017  -VMScaleSetName mpointsca -Force
azure group deployment create -f azuredeploy.json -e azuredeploy.parameters.json -g mPoint_Scaleset_29052017 -n rocdashdeploy$2