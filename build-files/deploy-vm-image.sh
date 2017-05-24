#!/bin/bash

cat azuredeploy.parameters.json
azure group deployment create -f azuredeploy.json -e azuredeploy.parameters.json -g mpointpoc -n rocdashdeploy$2