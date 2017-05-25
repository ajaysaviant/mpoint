#!/bin/bash

cat azuredeploy.parameters.json
azure account set 28d69262-04f8-4974-8f5f-953cc6f18549 
azure group deployment create -f azuredeploy.json -e azuredeploy.parameters.json -g mpointpoc -n rocdashdeploy$2