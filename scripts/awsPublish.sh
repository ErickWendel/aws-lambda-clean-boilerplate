#!/usr/bin/env bash
aws --profile ${npm_package_aws_profile} \
  lambda publish-version \
  --region ${npm_package_aws_region} \
  --function-name ${npm_package_name}_${TARGET}
