#!/bin/bash

set -x
du -hs * | sort -h
export AWS_REGION=us-east-1
export AWS_DEFAULT_REGION=us-east-1

sam deploy template.yaml --config-env ${ENVIRONMENT} --s3-bucket todo-list-aws-bucket --region us-east-1 --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --stack-name $1
