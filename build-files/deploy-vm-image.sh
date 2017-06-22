#!/bin/bash

cat azuredeploy.parameters.json
azure group deployment create -f azuredeploy.json -e azuredeploy.parameters.json -g mpoint_scaleset_production -n mpointdeploy$2