#!/usr/bin/env bash
echo 'Deploying...'
aws --profile ${npm_package_aws_profile} \
  lambda update-function-code \
  --zip-file fileb://.dist/package.zip \
  --region ${npm_package_aws_region} \
  --function-name ${npm_package_name}_${FUNCTION}
