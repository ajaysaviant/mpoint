#!/bin/bash

cat azuredeploy.parameters.json
azure group deployment create -f azuredeploy.json -e azuredeploy.parameters.json -g mPoint_Scaleset_29052017 -n rocdashdeploy$2