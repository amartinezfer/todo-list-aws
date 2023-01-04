#!/bin/bash

set -x
du -hs * | sort -h
export AWS_REGION=us-east-1
sam deploy template.yaml --config-env ${ENVIRONMENT}  --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --stack-name $1
