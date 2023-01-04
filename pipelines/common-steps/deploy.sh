#!/bin/bash

set -x
du -hs * | sort -h
sam deploy template.yaml --config-env ${ENVIRONMENT}  --region us-east-1 --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --stack-name $1
